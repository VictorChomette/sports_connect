Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "fields", to: "fields#index"
  get "fields/:id", to: "fields#show"
  resources :fields, only: [:index, :show] do
    resources :favorites, only: [:create, :destroy]
  end
end
