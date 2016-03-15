FactoryGirl.define do
  factory :client do
    name { Faker::Company.name }
    ms_username "admin"
    ms_password "admin"
    ms_api_host "10.0.5.43"
    ms_host "10.0.5.43"
  end

  factory :client_organization do
    name { Faker::Company.name }
    client
  end

  factory :user, class: OrganizationUser do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    client_organization
    factory :super_user do
      is_super_user { true }
    end
    factory :admin_user do
      is_admin { true }
    end
  end

  factory :project do
    name { Faker::Company.name }
    client_organization
    time_zone "GMT"
  end

  factory :tag do
    name { Faker::Name.first_name }
    description { Faker::Lorem.sentence }
    project
    factory :tag_with_fields do
      after(:create) do |tf|
        5.times { create(:string_tag_field, tag: tf) }
      end
    end
  end

  factory :string_tag_field, class: TagField do
    name { Faker::Name.first_name }
    type { 'string' }
  end

  factory :trigger do
    name { "Basic Trigger" }
    position { 1 }
    project
    factory :trigger_with_5_minute_delay do
      delay_unit { "minutes" }
      delay_amount { 5 }
    end
    factory :trigger_with_5_hour_delay do
      delay_unit { "hours" }
      delay_amount { 5 }
    end
    factory :trigger_with_5_day_delay do
      delay_unit { "days" }
      delay_amount { 5 }
    end
  end
end
