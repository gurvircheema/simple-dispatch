require 'rails_helper'

RSpec.describe Company, type: :model do
  it 'has a valid Factory' do
    expect(FactoryBot.build(:company).valid?).to eq true
  end

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:street) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:zip) }
  it { is_expected.to validate_presence_of(:contact) }
  it { is_expected.to validate_presence_of(:phone) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:currency) }

  it { should have_many(:customers) }
  it { should have_many(:employees) }
end
