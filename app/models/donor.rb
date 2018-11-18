class Donor < ApplicationRecord
  default_scope { where("void = 0") }
  validates_presence_of :name
end
