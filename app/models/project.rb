class Project < ActiveRecord::Base
  belongs_to :client_organization

  has_many :tags
  has_many :profiles
  has_many :fields, -> { where field_id: nil }
  has_many :triggers, -> { order type: :desc }
  has_many :calculated_fields, -> { where field_id: nil }
  has_many :conditional_fields, -> { where field_id: nil }
  has_many :event_fields, -> { where field_id: nil }

  accepts_nested_attributes_for :tags
  accepts_nested_attributes_for :triggers
  accepts_nested_attributes_for :fields

  TIME_ZONES = {"SST- Samoa Standard Time" => "-11",
                 "HST- Hawaii Standard Time" => "-10",
                 "AST- Alaska Standard Time" => "-9",
                 "PST- Pacific Standard Time (US & Canada)" => "-8",
                 "MST- Mountain Standard Time" => "-7",
                 "CST- Central Standard Time" => "-6",
                 "EST- Eastern Standard Time" => "-5",
                 "AST- Atlantic Standard Time" => "-4",
                 "WGT- West Greenland Time" => "-3",
                 "BST- British Standard Time" => "-2",
                 "EGT- East Greenland Time" => "-1",
                 "GMT- Greenwich Mean Time" => "0",
                 "ECT- European Central Time" => "+1",
                 "CAT- Central Africa Time" => "+2",
                 "MSK- Moscow Standard Time" => "+3",
                 "GST- Gulf Standard Time" => "+4",
                 "PST- Pakistan Standard Time" => "+5",
                 "BST- Bangladesh Standard Time" => "+6",
                 "ICT- Indochina Time" => "+7",
                 "SST- Singapore Standard Time" => "+8",
                 "JST- Japan Standard Time" => "+9",
                 "AEST- Australia Eastern Standard Time" => "+10",
                 "SBT- Solomon Island Time" => "+11",
                 "NZST- New Zealand Standard Time" => "+12",
               }

  def process_event(params)
    # Search for a matching profile
    profile = nil
    if params['user_id']
      profile = profiles.find_by( primary_key: params['user_id'] )
    end

    ['email', 'device', 'cookie', 'mobile'].each do |id|
      klass = Object.const_get(id.capitalize)
      record = klass.find_by( value: params[id] )
      profile = record.profile if record.present?

      # Add the submitted user_id to the profile if it exists and doesn't belong to another user
      if profile.present? && (profile.primary_key.nil? || profile.primary_key == params['user_id'])
        profile.primary_key = params['user_id']
        break
      else
        profile = nil
      end
    end

    # Create a new profile if one was not found

    if profile.nil?
      profile = profiles.create( primary_key: params['user_id'])
    end

    # Create records for identifying fields and add to current profile
    ['email', 'device', 'cookie', 'mobile'].each do |id|
      if params[id].present?
        klass = Object.const_get(id.capitalize)
        klass.find_or_create_by( profile_id: profile.id, value: params[id] )
        profile.data[id] = params[id]
      end
    end

    # Add all event fields to current profile
    event_fields.each do |f|
      profile.data[f.name] = f.evaluate(params, profile.data)
    end

    # Evaluate and add conditional fields to current profile
    conditional_fields.includes(conditional_field_values: {conditions: [:field1, :field2]}).each do |f|
      profile.data[f.name] = f.evaluate(params, profile.data)
    end

    # Evaluate and add calculated fields to current profile
    calculated_fields.includes(expressions: :field).each do |f|
      profile.data[f.name] = f.evaluate(params, profile.data)
    end


    profile.save
    triggers.each do |t|
      t.process(params, profile)
    end
  end

end
