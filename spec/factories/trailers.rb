FactoryBot.define do
  factory :trailer do
    unit_number { rand(101..110) }
    make { FFaker::Vehicle.make }
    model { FFaker::Vehicle.model }
    year { FFaker::Vehicle.year }
    plate_number { FFaker::Vehicle.vin[0..6] }
    state { FFaker::AddressCA.province }
    country { FFaker::AddressCA.province }
    vin { FFaker::Vehicle.vin }
    start_date { 2.years.ago }
    leave_date { nil }
    truck
    company
  end
end
