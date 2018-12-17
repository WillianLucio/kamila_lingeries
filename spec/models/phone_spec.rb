require 'rails_helper'

RSpec.describe Phone, type: :model do
  context 'Testing associations' do
    it 'Belongs to profile' do
      assc = described_class.reflect_on_association(:profile)
      expect(assc.macro).to eq :belongs_to
    end
  end

  context 'Testing Validations' do
    it 'Valid attributes' do
      phone = build(:phone)
      expect(phone).to be_valid
    end

    it 'Is invalid without profile' do
      phone = build(:phone, profile: nil)
      expect(phone).to_not be_valid
    end
  end
end
