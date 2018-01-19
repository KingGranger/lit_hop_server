Rails.application.routes.draw do
  resources :types
  namespace :api do
    namespace :v1 do
      resources :journeys
      resources :trips
      resources :bars, only: [:create, :show, :index]
      resources :users
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end
