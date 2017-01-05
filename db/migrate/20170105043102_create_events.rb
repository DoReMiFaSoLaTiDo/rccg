class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :event_type
      t.datetime :start_date
      t.datetime :end_date
      t.string :minister
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
