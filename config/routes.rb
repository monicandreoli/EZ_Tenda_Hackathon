Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :auctions do
    resources :bids, only: [:new, :create]
  end
  resources :bids, only: [:show, :edit, :update]
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
