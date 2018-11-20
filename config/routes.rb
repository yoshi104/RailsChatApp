Rails.application.routes.draw do

 resources :chats
 root to: 'chats#index'
 get 'chats' => redirect('')
 get 'index' => redirect('')
 
 # get 'chats' => redirect('')
 # get '' => 'top/layouts#chatView'
 # get 'detail' => 'detailpage#chatView'
 # get 'top' => redirect('')
 # get 'index' => redirect('')
 # get 'layouts/chatView'
 # root to: 'layouts#chatView'

end
