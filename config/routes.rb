Rails.application.routes.draw do
  #mount ActionCable
  mount ActionCable.server => '/cable'

  resources :messages, only: [:new, :create]
  
  get '/rooms', to: "rooms#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "orders#index"
  resources :orders
  get "/kitchen", to: "orders#kitchen"
  get "/pickup", to: "orders#pickup"
  get "/station", to: "orders#new"

  # API routes
  namespace :api do
    namespace :v1 do
      resources :orders, only: [:create, :index]
    end
  end
end
