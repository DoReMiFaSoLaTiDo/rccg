class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
