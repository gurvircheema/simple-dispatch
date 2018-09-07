require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'should have valid factory' do
    expect(FactoryBot.build(:location).valid?).to eq(true)
  end

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:street) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { should belong_to(:company) }
end
