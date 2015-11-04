class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :attendance
      t.datetime :start
      t.datetime :end
      t.integer :cost_in_cents

      t.timestamps null: false
    end
  end
end
