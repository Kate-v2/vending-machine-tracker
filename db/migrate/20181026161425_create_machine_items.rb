class CreateMachineItem < ActiveRecord::Migration[5.1]
  def change
    create_table :machine_items do |t|
      t.references :machine, foreign_key: true
      t.references :items,   foreign_key: true

      t.timestamps
    end
  end
end
