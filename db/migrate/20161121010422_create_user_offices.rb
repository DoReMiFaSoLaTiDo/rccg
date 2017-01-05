class CreateUserOffices < ActiveRecord::Migration
  def change
    create_table :user_offices do |t|
      t.integer :user_id
      t.integer :office_id

      t.timestamps null: false
    end
  end
end
