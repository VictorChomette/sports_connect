class CreatePresences < ActiveRecord::Migration[6.0]
  def change
    create_table :presences do |t|
      t.datetime :date
      t.references :field, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
