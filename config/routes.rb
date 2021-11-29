Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/profile', to: 'pages#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :fields, only: [:index, :show] do
    resources :favorites, only: [:create, :destroy]
    resources :reviews , only: [:create]
    resources :presences, only: [:create]
    resources :chatrooms, only: [:show] do
      resources :messages, only: [:create]
    end
  end


  resources :favorites, only: [:index]
  resources :reviews, only: [:destroy]
  # delete 'reviews/:id', to: 'reviews#destroy'
  resources :presences, only: [:index, :destroy]

  # AJAX

  get '/fetch_presences', to: 'presences#fetch'

end
