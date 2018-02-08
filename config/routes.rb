Rails.application.routes.draw do
  get 'books/index'

  get 'index' => 'pages#home'
  get 'deux' => 'pages#deux'
  get 'trois' => 'books#index'

  
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
