Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :restaurants, param: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
  post "/login", to: "sessions#create"
  post "/register", to: "users#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

end
