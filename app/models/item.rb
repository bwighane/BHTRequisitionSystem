class Item < ApplicationRecord
  default_scope { where("void = 0") }
  validates_presence_of :name, :cost
end
