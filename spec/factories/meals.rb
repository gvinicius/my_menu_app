require 'securerandom'

FactoryBot.define do
  factory :meal do
    name { Faker::Food.dish }
    quantity { SecureRandom.random_number(1000) }
    price { SecureRandom.random_number(1000) + SecureRandom.random_number }
  end
end
