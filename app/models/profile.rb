class Profile < ApplicationRecord
  belongs_to :user
  has_one :address
  has_many :phones

  validates :role, presence: true
  validates :role, numericality: {  only_integer: true,
                                    greater_than: 0,
                                    less_than: 3 }
end
