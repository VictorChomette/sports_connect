class AddCoordinatesToFields < ActiveRecord::Migration[6.0]
  def change
    add_column :fields, :latitude, :float
    add_column :fields, :longitude, :float
  end
end
