FactoryBot.define do
  factory :o_auth_line do
    sub { SecureRandom.hex }
  end
end
