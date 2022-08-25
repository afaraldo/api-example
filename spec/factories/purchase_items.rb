FactoryBot.define do
  factory :purchase_item do
    association :product
    association :purchase
    quantity { Faker::Number.number(digits: 2)  }
  end
end
