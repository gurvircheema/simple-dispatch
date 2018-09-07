FactoryBot.define do
  factory :carrier do
    name { FFaker::Name.name }
    street { FFaker::AddressCA.street_address }
    city { FFaker::AddressCA.city }
    state { FFaker::AddressCA.province }
    country { FFaker::AddressCA.country }
    zip { FFaker::AddressCA.postal_code }
    phone { FFaker::PhoneNumber.phone_number }
    cell_phone { FFaker::PhoneNumber.phone_number }
    fax { FFaker::PhoneNumber.short_phone_number }
    email { FFaker::Internet.email }
    website { FFaker::Internet.http_url }
    contact { FFaker::Name.name }
    company
  end
end
