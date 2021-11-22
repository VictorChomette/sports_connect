class AddFavoriteSportsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :favorite_sports, :text, array: true, default: []
  end
end
