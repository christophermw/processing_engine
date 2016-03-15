class ProfileDefinition < ActiveRecord::Base
  belongs_to :project
  has_many :profile_definition_fields

  accepts_nested_attributes_for :profile_definition_fields
end
