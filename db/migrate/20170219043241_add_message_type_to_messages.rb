class AddMessageTypeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :message_type, :integer
    add_column :messages, :status, :integer
  end
end
