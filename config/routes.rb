Rails.application.routes.draw do
  resources :users
  resources :attractions
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  root 'users#new'
end
