FactoryBot.define do
  factory :purchase do
    date { Faker::Date.between(from: 2.days.ago, to: Date.today) }
    number { Faker::IDNumber.valid }
  end
end
