FactoryBot.define do
  factory :location do
    name { FFaker::Name.name }
    street { FFaker::AddressCA.city }
    city { FFaker::AddressCA.city }
    state { FFaker::AddressCA.province }
    cauntry { FFaker::AddressCA.country }
    zip { FFaker::AddressCA.postal_code }
    phone { FFaker::PhoneNumber.phone_number }
    fax { FFaker::PhoneNumber.phone_number }
    contact { FFaker::Name.name }
    notes { FFaker::Lorem.phrase }
    email { FFaker::Internet.email }
    website { FFaker::Internet.http_url }
    company
  end
end
