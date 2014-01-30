class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name, limit: 100
      t.string :license
      t.date :buy_date
      t.text :purpose

      t.timestamps
    end
  end
end
