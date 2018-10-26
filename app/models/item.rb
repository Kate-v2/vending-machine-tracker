
class Item < ApplicationRecord
  validates_presence_of :name, :price

  has_many :machine_items
  has_many :machines, through: :machine_items

end
