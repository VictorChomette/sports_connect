class ChangeColumnsOnTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :favorite_sports
    remove_column :fields, :field_types
  end
end
