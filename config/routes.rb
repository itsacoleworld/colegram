Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  root to: 'home#index'

  # user views
  resources :users, only: [:show, :edit, :update]

  # post views
  resources :posts, only: [:new, :create, :show, :destroy]
end
