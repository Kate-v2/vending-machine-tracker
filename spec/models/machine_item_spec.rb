require 'rails_helper'


describe MachineItem, type: :model do

  describe 'Relationships' do

    it { should belong_to :item}
    it { should belong_to :machine}



  end



end
