require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Testing associations' do
    it 'Has one profile' do
      assc = described_class.reflect_on_association(:profile)
      expect(assc.macro).to eq :has_one
    end
  end

  context 'Testing validations' do
    it 'Valid attributes' do
      user = build(:user)
      expect(user).to be_valid
    end

    context 'Invalid attributes' do
      it 'Is invalid without email' do
        user = build(:user, email: nil)
        expect(user).to_not be_valid
      end

      it 'Is invalid without password' do
        user = build(:user, password: nil)
        expect(user).to_not be_valid
      end
    end
  end
end
