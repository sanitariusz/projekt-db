class RelationBworkersDomains < ActiveRecord::Migration
  def change
    add_column :domains, :worker_id, :integer
  end
end
