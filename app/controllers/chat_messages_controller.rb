class ChatMessagesController < ApplicationController
    def index
      
        @chat_messages = ChatMessage.all #chat　messageをdbから取得
        @userid = session[:user_id]
        
        puts '######'
        puts @userid
        puts '#####'

        if @userid == nil
            redirect_to('/login')
        else
            puts 'セッション'
            puts session[:user_id]

             @chat_messages.each { |message| 
            puts message.user_id
            puts message.body
            puts "+++"
            }

             puts "current user"
             puts current_user.user_name


             @_current_user ||= User.find_by(id: session[:user_id])
        end      

    end

  private
    def current_user
        @_current_user ||= User.find_by(id: session[:user_id])
    end
  end