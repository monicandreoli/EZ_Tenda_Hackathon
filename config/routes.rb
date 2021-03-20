Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :auctions do
    resources :bids, only: [:new, :create]
  end
  resources :bids, only: [:show, :edit, :update]
  get '/dashboard', to: 'pages#dashboard'
  # patch '/approve/:id', to: "bids#approve", as: :approve
  # patch '/decline/:id', to: "bids#decline", as: :decline
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
