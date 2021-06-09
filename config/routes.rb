Rails.application.routes.draw do
  root 'products#index'
  resources :products do
    resources :orders, only: [:create]
  end
  devise_for :users
end
