class DropResponsibleFromDomains < ActiveRecord::Migration
  def change
    remove_column :domains, :responsible
    add_column :softwares, :worker_id, :integer
    add_column :admittances, :worker_id, :integer
  end
end
