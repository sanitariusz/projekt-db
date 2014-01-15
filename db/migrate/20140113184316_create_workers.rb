class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :superior
      t.integer :phone
      t.string :login

      t.timestamps
    end
  end
end
