class CreateOfficeRoles < ActiveRecord::Migration
  def change
    create_table :office_roles do |t|
      t.integer :office_id
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
