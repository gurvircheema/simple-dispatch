FactoryBot.define do
  factory :company do
    name { FFaker::Name.name }
    street { FFaker::AddressCA.city }
    city { FFaker::AddressCA.city }
    state { FFaker::AddressCA.province }
    country { FFaker::AddressCA.city }
    zip { FFaker::AddressCA.postal_code }
    contact { FFaker::Name.name }
    phone { FFaker::PhoneNumber.phone_number }
    fax { FFaker::PhoneNumber.short_phone_number }
    email { FFaker::Internet.email }
    website { FFaker::Internet.http_url }
    currency { FFaker::Currency.code }
  end
end
