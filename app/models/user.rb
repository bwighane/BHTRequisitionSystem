class User < ApplicationRecord
    belongs_to :department
    belongs_to :role
    validates_presence_of :firstname, :lastname, :email, :password, :role_id, :department_id
end
