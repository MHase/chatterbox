class AddDescriptionToChatRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :chat_rooms, :description, :string
  end
end
