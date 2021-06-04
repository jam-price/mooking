class AddColorArrayToCows < ActiveRecord::Migration[6.0]
  def change
    add_column :cows, :colors, :text, array: true, default: []
  end
end
