class ChatMessagesController < ApplicationController
    def index
        @chat_messages = ChatMessage.all
    end
  end