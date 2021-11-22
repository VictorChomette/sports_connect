class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :address
      t.integer :indoor_outdoor
      t.integer :status

      t.timestamps
    end
  end
end
