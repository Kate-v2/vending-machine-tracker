require 'rails_helper'

describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
  end

  describe 'Relationships' do

    it { should have_many :machine_items}
    it { should have_many :items}

  end

  describe 'math' do

    it 'should average the price of all stocked items' do
      skip
    end

  end

end
