Rails.application.routes.draw do

  root :to => 'cars#index'
  resources :users, :only => [:new, :create]
  resources :users, :only => [:new, :create, :index]
  resources :reviews, :only => [:new, :create]
  resources :brands
  resources :cars
  resources :models
  get '/reviews' => 'reviews#index'
  get '/reviews/:id' => 'reviews#show'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
