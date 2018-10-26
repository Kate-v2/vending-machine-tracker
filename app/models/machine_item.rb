
class MachineItem < ApplicationRecord

  validates_presence_of :item, :machine

  belongs_to :item
  belongs_to :machine


end
