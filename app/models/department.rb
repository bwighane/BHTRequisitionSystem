class Department < ApplicationRecord
    has_many :users
    validates:presence_of :name
end
