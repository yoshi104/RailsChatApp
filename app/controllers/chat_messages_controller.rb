class ChatMessagesController < ApplicationController
  def index
    # session[:user_id]が定義されているか判定（ログインされているか否か）
    if session[:user_id] == nil
      redirect_to('/login')
    else
      puts 'セッション'
      puts session[:user_id]

      #chat　messageをdbから取得
      @chat_messages = ChatMessage.all 

      @chat_messages.each { |message| 
      puts message.user_id
      puts message.body
      puts "+++"
      }
      @_current_user = User.find_by(id: session[:user_id])
    end
  end
end