OnlineStore::Application.routes.draw do
  resources :product_types

  resources :products

  devise_for :users

  resources :contacts

  resources :home

  root to: 'home#index'

end
