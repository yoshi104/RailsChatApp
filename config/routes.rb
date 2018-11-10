Rails.application.routes.draw do
  get '' => 'top/layouts#index'
  get 'detail' => 'detailpage#index'
  get 'top' => redirect('')
  get 'index' => redirect('')

  get 'top/index'

end
