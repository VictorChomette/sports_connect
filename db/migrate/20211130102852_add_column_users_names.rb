class AddColumnUsersNames < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :name, :string
  end
end
