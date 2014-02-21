class CreateAdmittances < ActiveRecord::Migration
  def change
    create_table :admittances do |t|
      t.string :access_to
      t.text :description

      t.timestamps
    end
  end
end
