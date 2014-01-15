class ChangeDatatypeDomain < ActiveRecord::Migration
  def up
    change_table :domains do |t|
      t.change :Responsible, :string
    end 
  end

  def down
    change_table :domains do |t|
     t.change :Responsible, :text
    end
  end
end
