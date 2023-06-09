Rails.application.routes.draw do
  resources :posts do
    resource :comments, only: [:create]
  end
  resources :likes, only: [:create, :destroy]

  get '/register', to: 'users#new'
  resources :users, only: [:create]

  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  resource :sessions, only: [:create]

end
