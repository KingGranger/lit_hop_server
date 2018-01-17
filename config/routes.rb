Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trips
      resources :bars, only: [:create, :show, :index]
      resources :users
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      post '/locations', to: 'locations#create'
      get '/locations', to: 'locations#index'
    end
  end
end
