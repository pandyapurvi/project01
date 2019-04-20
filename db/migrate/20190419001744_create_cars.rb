class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.text :name
      t.text :image
      t.integer :seat
      t.text :price
      t.integer :brand_id
      t.integer :model_id

      t.timestamps
    end
  end
end
