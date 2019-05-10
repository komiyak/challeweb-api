FactoryBot.define do
  factory :year do
    name { Faker::Number.between(2010, 2050).to_s }
  end
end
