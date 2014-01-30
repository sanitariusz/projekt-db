class RelationBHardwareTypeshardwares < ActiveRecord::Migration
  def change
    add_column :hardwares, :hardware_type_id, :integer
  end
end
