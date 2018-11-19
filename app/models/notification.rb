class Notification < ApplicationRecord
  default_scope { where("void = 0") }
  validates_presence_of :body, :path
  belongs_to :user 
end
