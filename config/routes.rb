Rails.application.routes.draw do
  root 'products#index'
  resources :products 
  resources :orders, only: [:index, :new, :create]
  devise_for :users
end
