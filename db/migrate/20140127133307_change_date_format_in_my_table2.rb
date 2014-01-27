class ChangeDateFormatInMyTable2 < ActiveRecord::Migration
  def change
    change_column :workers, :name, :string, :limit => 50
    change_column :workers, :surname, :string, :limit => 60
    change_column :workers, :email, :string, :limit => 254
    change_column :workers, :superior, :string, :limit => 40
    change_column :workers, :phone, :string, :limit => 12
    change_column :workers, :login, :string, :limit => 30
    change_column :admin_users, :name, :string, :limit => 50
    change_column :admin_users, :name, :string, :limit => 60
  end
end
