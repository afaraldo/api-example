FactoryBot.define do
  factory :product do
    name { Faker::Name.name }
    association :category
  end
end
