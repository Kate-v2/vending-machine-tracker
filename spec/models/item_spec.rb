require 'rails_helper'


describe Item, type: :model do

  describe 'Relationships' do

    it { should have_many :machine_items}
    it { should have_many :machines}

  end


end
