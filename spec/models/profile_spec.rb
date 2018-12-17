require 'rails_helper'

RSpec.describe Profile, type: :model do
  context 'Testing associations' do
    it 'Belongs to user' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end

    it 'Has one address' do
      assc = described_class.reflect_on_association(:address)
      expect(assc.macro).to eq :has_one
    end

    it 'Has many phones' do
      assc = described_class.reflect_on_association(:phones)
      expect(assc.macro).to eq :has_many
    end
  end

  context 'Testing validations' do
    it 'Valid attributes' do
      profile = build(:profile)
      expect(profile).to be_valid
    end

    context 'Invalid attributes' do
      it 'Is invalid without user' do
        profile = build(:profile, user: nil)
        expect(profile).to_not be_valid
      end

      it 'Is invalid without role' do
        profile = build(:profile, role: nil)
        expect(profile).to_not be_valid
      end

      it 'Is invalid with role less than 1' do
        profile = build(:profile, role: 0)
        expect(profile).to_not be_valid
      end

      it 'Is invalid with role greater than 2' do
        profile = build(:profile, role: 3)
        expect(profile).to_not be_valid
      end
    end
  end
end
