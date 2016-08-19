class AddActiveToMem < ActiveRecord::Migration[5.0]
  def change
    add_column :mems, :active, :boolean
    Mem.update_all(active: false)
  end
end
