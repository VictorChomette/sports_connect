class RemoveFavoriteSportsFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :favorite_sports, :text
  end
end
