class AddDataCountToNode < ActiveRecord::Migration[5.0]
  def change
    add_column :nodes, :data_count, :integer
  end
end
