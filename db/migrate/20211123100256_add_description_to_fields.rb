class AddDescriptionToFields < ActiveRecord::Migration[6.0]
  def change
    add_column :fields, :description, :text
  end
end
