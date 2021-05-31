class CreateCows < ActiveRecord::Migration[6.0]
  def change
    create_table :cows do |t|
      t.string :name
      t.text :description
      t.string :breed
      t.string :color
      t.string :location
      t.string :category
      t.string :favorite_food
      t.float :price

      t.timestamps
    end
  end
end
