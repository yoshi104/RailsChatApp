Rails.application.routes.draw do

 resources :chat_messages
 root to: 'chat_messages#index'
 get 'chat_messages' => redirect('')
 get 'index' => redirect('')
 get 'user' => 'user#index'
 post 'user_register' => 'user#register'
 
 # get 'chats' => redirect('')
 # get '' => 'top/layouts#chatView'
 # get 'detail' => 'detailpage#chatView'
 # get 'top' => redirect('')
 # get 'index' => redirect('')
 # get 'layouts/chatView'
 # root to: 'layouts#chatView'
 get 'login' => 'login#index'
 get 'logout' => 'logout#index'
 post 'session_create' => 'sessions#create'
 get 'session_destroy' => 'sessions#destroy'
end
