class CreateExtra < ActiveRecord::Migration[5.0]
  def change
    create_table :extras do |t|
      t.string :name
      t.boolean :private
      t.integer :car_id

      t.timestamps
    end
    add_foreign_key :extras, :cars
  end
end
