FactoryBot.define do
  factory :profile do
    user
    name      { Faker::Name.name }
    birthdate { Faker::Date.birthday(18, 65) }
    sex       { Random.rand(1..2) }
    facebook  { Faker::Internet.url('facebook.com', name) }
    role      { Random.rand(1..2) }
  end
end
