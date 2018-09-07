require 'rails_helper'

RSpec.describe Truck, type: :model do
  it 'has valid factory' do
    expect(FactoryBot.create(:truck).valid?).to eq true
  end

  it { is_expected.to validate_presence_of(:unit_number) }
  it { is_expected.to validate_presence_of(:make) }
  it { is_expected.to validate_presence_of(:model) }
  it { is_expected.to validate_presence_of(:year) }
  it { is_expected.to validate_presence_of(:plate_number) }
  it { is_expected.to validate_presence_of(:vin) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:country) }

  it { should belong_to(:driver) }
  it { should belong_to(:driver)}
end
