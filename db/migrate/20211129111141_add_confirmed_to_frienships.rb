class AddConfirmedToFrienships < ActiveRecord::Migration[6.0]
  def change
    add_column :friendships, :confirmed, :boolean, default: false
  end
end
