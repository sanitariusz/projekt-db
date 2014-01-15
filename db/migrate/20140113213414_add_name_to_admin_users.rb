class AddNameToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :Name, :string
    add_column :admin_users, :Surname, :string
  end
end
