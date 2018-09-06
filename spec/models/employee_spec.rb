require 'rails_helper'

RSpec.describe Employee, type: :model do
  it 'has a valid Factory' do
    expect(FactoryBot.build(:employee).valid?).to eq true
  end

  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:zip) }
  it { is_expected.to validate_presence_of(:cell_phone) }
  it { is_expected.to validate_presence_of(:email) }
end
