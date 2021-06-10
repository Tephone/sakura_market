Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end
  namespace :admin do
    resources :products
  end
  root 'products#index'
  resources :products 
    namespace :admin do
      resources :products
    end
    namespace :admin do
      resources :users
    end
  resources :orders, only: [:index, :new, :create]
  devise_for :users
end
