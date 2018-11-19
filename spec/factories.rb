require 'faker'

FactoryBot.define do
  factory :notification do
    body { "MyString" }
    path { "MyString" }
  end

  factory :project do 
    name { Faker::Types.rb_string }
  end

  factory :site do 
    name { Faker::Types.rb_string }
  end
  
  factory :project_site do
    project 
    site 
  end

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
    cost { Faker::Commerce.price }
    void { 0 }
  end

  factory :district_type do
    name { Faker::Address.city }
    void { 0 }
  end

  factory :district do
    name { Faker::Address.city }
    district_type
  end

end