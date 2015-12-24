Rails.application.routes.draw do
  resources :posts
  resources :comments, :only => [:create, :destroy]
  get 'profile', as: 'user_root', controller: 'users'
  devise_for :users
  root to: 'home#index'
end
