class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.references :brand, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true
      t.decimal :price
      t.integer :total_distance
      t.integer :engine_volume
      t.integer :assembly_year
      t.integer :purchase_year

      t.timestamps null: false
    end
  end
end
