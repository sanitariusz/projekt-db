class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :Name
      t.string :Adress
      t.date :Expiration
      t.string :Responsible

      t.timestamps
    end
  end
end
