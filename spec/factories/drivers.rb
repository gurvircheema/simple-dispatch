FactoryBot.define do
  factory :driver do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    city { FFaker::AddressCA.city }
    state { FFaker::AddressCA.province }
    zip { FFaker::AddressCA.postal_code }
    cell_phone { FFaker::PhoneNumber.phone_number }
    email { FFaker::Internet.email }
    start_date { FFaker::Time.between(2.years.ago, 1.years.ago) }
    license_number { FFaker::Identification.drivers_license }
    license_expiry_date { FFaker::Time.between(1.years.from_now, 2.years.from_now) }
    license_province { FFaker::AddressCA.province }
    company
  end
end
