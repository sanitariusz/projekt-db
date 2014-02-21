class AddColumnToTableWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :department_id, :integer
  end
end
