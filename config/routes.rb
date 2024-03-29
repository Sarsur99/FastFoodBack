Rails.application.routes.draw do
  # root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :restaurants, param: :slug
      delete '/restaurants/:id', to: 'restaurants#destroy'
      resources :reviews, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
  post "/login", to: "sessions#create"
  post "/register", to: "users#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  # get '/restaurants/:slug', to: 'restaurants#show', as: 'restaurant'

end
