class AddPpmToDatum < ActiveRecord::Migration[5.0]
  def change
    add_column :data, :ppm, :integer
  end
end
