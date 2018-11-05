require 'rails_helper'

feature 'When a user visits a vending machine show page' do

  before(:each) do
    @owner1 = Owner.create(name: "Sam's Snacks")
    @machine1  = @owner1.machines.create(location: "Don's Mixed Drinks")
    @item1 = Item.create(name: "Snack 1", price: 1)
    @item2 = Item.create(name: "Snack 2", price: 2)
    MachineItem.create(machine: @machine1, item: @item1)
    MachineItem.create(machine: @machine1, item: @item2)
  end


  scenario 'they see the location of that machine' do
    visit machine_path(@machine1)
    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  scenario 'they see all snacks in that machine with name and price' do
    visit machine_path(@machine1)
    expect(page).to have_content('Snack 1')
    expect(page).to have_content('$1')
    expect(page).to have_content('Snack 2')
    expect(page).to have_content('$2')
  end

  scenario 'they see all snacks in that machine with name and price' do
    visit machine_path(@machine1)

    expect(page).to have_content("Average price $#{@machine1.average_price}")
  end








end
