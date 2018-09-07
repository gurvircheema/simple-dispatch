require 'rails_helper'

RSpec.describe Driver, type: :model do
  it 'should have valid factory' do
    expect(FactoryBot.build(:driver).valid?).to eq true
  end

  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:zip) }
  it { is_expected.to validate_presence_of(:cell_phone) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:license_number) }
  it { is_expected.to validate_presence_of(:license_expiry_date) }
  it { is_expected.to validate_presence_of(:license_province) }
  it { should belong_to(:company) }
end
