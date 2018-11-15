class User < ApplicationRecord
            # Include default devise modules.
            devise :database_authenticatable, :registerable,
                    :recoverable, :rememberable, :trackable, :validatable,
                    :confirmable, :omniauthable
            include DeviseTokenAuth::Concerns::User
    belongs_to :department
    belongs_to :role
    validates_presence_of :firstname, :lastname, :email, :role_id, :department_id
end
