require 'rails_helper'

RSpec.describe Carrier, type: :model do
  it 'has a valid factory' do 
    expect(FactoryBot.build(:carrier).valid?).to eq(true)
  end

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:country) }
  it { is_expected.to validate_presence_of(:zip) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:name) }

  it { should belong_to(:company) }
end
