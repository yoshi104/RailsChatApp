class ChangeDatatypeUserId < ActiveRecord::Migration[5.2]
  def change
    change_column(:chat_messages, :user_id, :string)
  end
end
