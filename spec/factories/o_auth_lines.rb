FactoryBot.define do
  factory :o_auth_line do
    sub { Faker::Number.number.to_s }
  end
end
