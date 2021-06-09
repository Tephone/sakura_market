Rails.application.routes.draw do
  root 'products#index'
  resources :products 
  resources :orders, only: [:new, :create]
  devise_for :users
end
