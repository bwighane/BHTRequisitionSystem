class Department < ApplicationRecord
    default_scope { where("void = 0") }
    has_many :users
    validates_presence_of :name
end
