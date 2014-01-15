class RelationBworkersHardware < ActiveRecord::Migration
  def change
    add_column :hardwares, :worker_id, :integer
  end
end
