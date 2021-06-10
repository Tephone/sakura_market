Rails.application.routes.draw do
  root 'products#index'
  resources :products 
    namespace :admin do
      resources :products
    end

  resources :orders, only: [:index, :new, :create]
  devise_for :users
  namespace :admin do
    resources :users
  end
end
