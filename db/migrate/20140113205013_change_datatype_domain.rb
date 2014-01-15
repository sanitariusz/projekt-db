class ChangeDatatypeDomain < ActiveRecord::Migration
  def up
    change_table :domains do |t|
      t.change :responsible, :string
    end 
  end

  def down
    change_table :domains do |t|
     t.change :responsible, :text
    end
  end
end
