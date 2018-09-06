require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:customer).valid?).to be true
  end

  it { is_expected.to validate_presence_of(:name) }

  it { should belong_to(:company) }
end