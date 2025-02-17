class ChatMessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(chat_message)
    ActionCable.server.broadcast 'chat_message_channel', user_id: chat_message.user_id, message: chat_message.body
  end
end
