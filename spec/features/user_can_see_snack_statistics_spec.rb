require "rails_helper"

feature 'When a user visits a snack show page' do

  before(:each) do
    @owner1 = Owner.create(name: "Sam's Snacks")
    @machine1  = @owner1.machines.create(location: "Machine 1")
    @machine2  = @owner2.machines.create(location: "Machine 2")
    @machine3  = @owner3.machines.create(location: "Machine 3")
    @item1 = Item.create(name: "Snack 1", price: 1)
    @item2 = Item.create(name: "Snack 2", price: 2)
    MachineItem.create(machine: @machine1, item: @item1)
    MachineItem.create(machine: @machine1, item: @item2)
  end

  

end
