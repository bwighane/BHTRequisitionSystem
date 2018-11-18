class District < ApplicationRecord
  default_scope { where("void = 0") }
  validates_presence_of :name
  belongs_to :district_type 
end
