require 'faker'

FactoryBot.define do
  factory :department do
    name { Faker::Company.industry }
  end

  factory :role do
    name { Faker::Company.profession }
  end

  factory :user do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    role
    department
  end

  factory :donor do
    name { Faker::Company.name }
  end

  factory :item do
    name { Faker::Commerce.product_name }
    cost { Faker::Commerce.cost }
    void { 0 }
  end
end