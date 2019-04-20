class CreateModelsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :models_users, :id => false do |t|
      t.integer :model_id
      t.integer :user_id
    end
  end
end
