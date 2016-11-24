class CreateData < ActiveRecord::Migration[5.0]
  def change
    create_table :data do |t|
      t.references :node, foreign_key: true
      t.integer :temperature
      t.integer :luminosity

      t.timestamps
    end
  end
end
