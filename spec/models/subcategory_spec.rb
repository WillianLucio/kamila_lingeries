require 'rails_helper'

RSpec.describe Subcategory, type: :model do
  context 'Test associations' do
    it 'Belongs to category' do
      assc = described_class.reflect_on_association(:category)
      expect(assc.macro).to eq :belongs_to
    end
  end

  context 'Test validations' do
    it 'Valid attributes' do
      subcategory = build(:subcategory)
      expect(subcategory).to be_valid
    end

    it 'Is invalid without name' do
      subcategory = build(:subcategory, name: nil)
      expect(subcategory).to_not be_valid
    end

    it 'Is invalid without category' do
      subcategory = build(:subcategory, category: nil)
      expect(subcategory).to_not be_valid
    end
  end
end
