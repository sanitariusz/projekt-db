class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :Name
      t.string :Surname
      t.string :Email
      t.string :Superior
      t.integer :Phone
      t.string :Login

      t.timestamps
    end
  end
end
