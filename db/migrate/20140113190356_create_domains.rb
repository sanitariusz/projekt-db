class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :name
      t.string :adress
      t.date :expiration
      t.string :responsible

      t.timestamps
    end
  end
end
