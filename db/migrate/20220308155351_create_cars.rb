class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :colour
      t.integer :year
      t.float :price

      t.timestamps
    end
  end
end
