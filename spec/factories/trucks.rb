FactoryBot.define do
  factory :truck do
    unit_number { rand(101..110) }
    make { FFaker::Vehicle.make }
    model { FFaker::Vehicle.model }
    year { FFaker::Vehicle.year }
    plate_number { FFaker::Vehicle.vin[0..6] }
    type { 'tractor' }
    state { FFaker::AddressCA.province }
    country { FFaker::AddressCA.country }
    vin { FFaker::Vehicle.vin }
    is_company_truck { false }
    driver
    company
  end
end
