require 'rails_helper'

RSpec.describe User, type: :model do
  it 'User is valid with email and password' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'User is not valid without email' do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it 'User is not valid without password' do
    user = build(:user, password: nil)
    expect(user).to_not be_valid
  end

  it 'User has one profile' do
    assc = described_class.reflect_on_association(:profile)
    expect(assc.macro).to eq :has_one
  end
end
