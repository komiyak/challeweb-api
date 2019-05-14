FactoryBot.define do
  factory :school do
    name { Faker::University.name }
    order_number { 0 }
  end
end
