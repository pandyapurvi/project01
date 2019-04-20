class CreateCarsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_users, :id => false do |t|
      t.integer :car_id
      t.integer :user_id
    end
  end
end
