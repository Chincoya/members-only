Rails.application.routes.draw do
  # get 'users/new'
  resources :users, only: [:new, :show, :create]
  resources :posts, only: [:new, :create, :index], :controller => 'comments'
  root 'static_pages#home'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
end
