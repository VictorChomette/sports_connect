class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :age, :integer
    add_column :users, :favorite_sports, :text
  end
end

#ajout de colonnes à la table user
