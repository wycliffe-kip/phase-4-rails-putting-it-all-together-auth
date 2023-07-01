Rails.application.routes.draw do
  resources :recipes, only: [:create, :index]
  post '/signup', to: 'users#create'
  get "/me", to: "users#show"
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
