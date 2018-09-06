FactoryBot.define do
  factory :customer do
    name { FFaker::Name.name }
    company
  end
end