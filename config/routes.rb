Rails.application.routes.draw do
  # get 'users/new'
  resources :users, only: [:new, :show, :create]
  root 'static_pages#home'

  get '/index', to: 'comments#index' 
  get 'comments/new', to: 'comments#new'
  post 'comments', to: 'comments#create'
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
end
