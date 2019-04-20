class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.text :name
      t.text :size
      t.text :drive
      t.text :image
      t.timestamps
    end
  end
end
