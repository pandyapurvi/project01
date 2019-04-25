Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :users, :only => [:new, :create, :index]
  resources :reviews, :only => [:new, :create]
  resources :brands
  resources :cars
  resources :models
  resources :reviews
  # get '/reviews' => 'reviews#index'
  # get '/reviews/:id' => 'reviews#show'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
