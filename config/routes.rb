Rails.application.routes.draw do
  # get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :show, :create]
  root 'static_pages#home'
  get 'comments/new', to: 'comments#new'
  post 'comments', to: 'comments#create'
end
