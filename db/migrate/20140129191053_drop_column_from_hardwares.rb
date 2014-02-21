class DropColumnFromHardwares < ActiveRecord::Migration
  def change
    remove_column :hardwares, :hardware_type
  end
end
