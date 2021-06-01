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
      t.date :year_of_birth
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
