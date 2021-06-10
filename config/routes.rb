Rails.application.routes.draw do
  namespace :admin do
    resources :products
  end
  root 'products#index'
  resources :products 
    namespace :admin do
      resources :products
    end
  resources :orders, only: [:index, :new, :create]
  devise_for :users
end
