class CreateCar < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :cars, :users
  end
end
