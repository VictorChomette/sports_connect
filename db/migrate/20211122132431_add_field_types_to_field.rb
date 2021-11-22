class AddFieldTypesToField < ActiveRecord::Migration[6.0]
  def change
    add_column :fields, :field_types, :text, array: true, default: []
  end
end
