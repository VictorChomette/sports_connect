class RenameFieldTypes < ActiveRecord::Migration[6.0]
  def change
    rename_column :fields, :indoor_outdoor, :field_type
  end
end
