class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.string :Name
      t.string :Serial
      t.string :Type

      t.timestamps
    end
  end
end
