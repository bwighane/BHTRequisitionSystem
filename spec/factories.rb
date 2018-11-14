require 'faker'

FactoryBot.define do
  factory :department do
    name { Faker::Company.industry }
  end
end