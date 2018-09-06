require 'ffaker'

FactoryBot.define do
  factory :employee do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    city { FFaker::AddressCA.city }
    state { FFaker::AddressCA.province }
    zip { FFaker::AddressCA.postal_code }
    cell_phone { FFaker::PhoneNumber.phone_number }
    email { FFaker::Internet.email }
    start_date { FFaker::Time.between(2.years.ago, 1.years.ago) }
    date_of_birth { FFaker::Time.between(32.years.ago, 30.years.ago) }
  end
end
