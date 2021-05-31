class AddUserToCows < ActiveRecord::Migration[6.0]
  def change
    add_reference :cows, :user, null: false, foreign_key: true
  end
end
