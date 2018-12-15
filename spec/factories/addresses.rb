FactoryBot.define do
  factory :address do
    profile
    city          { Faker::Address.city }
    neighborhood  { Faker::Address.community }
    street        { Faker::Address.street_name }
    number        { Faker::Address.building_number }
    complement    { Faker::Address.secondary_address }
  end
end
