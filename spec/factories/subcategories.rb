FactoryBot.define do
  factory :subcategory do
    name { Faker::Lorem.word }
    category
  end
end
