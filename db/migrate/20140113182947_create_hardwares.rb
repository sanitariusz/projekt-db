class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.string :name
      t.string :serial
      t.string :hardware_type

      t.timestamps
    end
  end
end
