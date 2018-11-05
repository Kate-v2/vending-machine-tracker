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

  # JUST REALIZED MachineItem should hold price -- it's 10:55, due in 10 minutes....

  # need to remove Item's price field
  # need to add column 'machine_price' (aka price) to MachineItem
  #  - need an Item joins MachineItems
  #something like:  Item.select('*, AVG(machine_price) AS average_price').group(id, MachineItem.item_id)
  # ^^ gives you average price for that item across all machines
  # need to make a join for average price (and count) of all items in a machine
  #something like:  Machine.select('*, AVG(machine_price) AS average_price, COUNT( !!!!!!)').group(id, MachineItem.item_id)
                                                                              # ^ do we need stock qty or all items in machine? 



end
