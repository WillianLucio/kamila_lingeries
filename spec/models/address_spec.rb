require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'Testing associations' do
    it 'Belongs to profile' do
      assc = described_class.reflect_on_association(:profile)
      expect(assc.macro).to eq :belongs_to
    end
  end

  context 'Testing Validations' do
    it 'Valid attributes' do
      address = build(:address)
      expect(address).to be_valid
    end

    it 'Is invalid without profile' do
      address = build(:address, profile: nil)
      expect(address).to_not be_valid
    end
  end
end
