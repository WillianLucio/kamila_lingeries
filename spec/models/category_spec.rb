require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'Test associations' do
    it 'Has many subcategories' do
      assc = described_class.reflect_on_association(:subcategories)
      expect(assc.macro).to eq :has_many
    end
  end

  context 'Test validations' do
    it 'Valid attributes' do
      category = build(:category)
      expect(category).to be_valid
    end

    it 'Is invalid without name' do
      category = build(:category, name: nil)
      expect(category).to_not be_valid
    end
  end
end
