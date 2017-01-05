class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sender_name
      t.string :sender_email
      t.string :sender_phone
      t.string :subject
      t.text :body
      t.references :office, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
