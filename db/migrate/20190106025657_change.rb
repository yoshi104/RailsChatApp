class Change < ActiveRecord::Migration[5.2]
  def up
    change_table :chat_messages do |t|
      t.change :user_id, :integer
  end
end

  def down
    change_table :chat_messages do |t|
      t.change :user_id, :string
    end
  end
end