class AddCoordinatesToCows < ActiveRecord::Migration[6.0]
  def change
    add_column :cows, :latitude, :float
    add_column :cows, :longitude, :float
  end
end
