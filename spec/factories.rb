require 'faker'

FactoryBot.define do
  factory :department do
    name { Faker::Company.industry }
  end

  factory :role do
    name { Faker::Company.profession }
  end
end