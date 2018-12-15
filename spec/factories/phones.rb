FactoryBot.define do
  factory :phone do
    profile
    operator  { Faker::Lorem.word }
    number    { Faker::PhoneNumber.cell_phone }
    type      Random.rand(1..2)
  end
end
