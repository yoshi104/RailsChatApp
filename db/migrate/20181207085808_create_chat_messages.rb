class CreateChatMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_messages do |t|
      t.string :user_id
      t.text :body
      t.timestamps
    end
  end
end
