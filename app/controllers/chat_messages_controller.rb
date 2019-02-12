class ChatMessagesController < ApplicationController
    def index

        p '#######'
        p defined? session[:user_id]
        p '#######'
      
        
        # session[:user_id]が定義されているか判定（ログインされているか否か）
        if (defined? session[:user_id]) == nil
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

            puts "current user"
            puts current_user.user_name
            current_user
        end
    end

  private
    def current_user
        @_current_user ||= User.find_by(id: session[:user_id])
    end
  end