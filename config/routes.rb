OnlineStore::Application.routes.draw do
  resources :orders


  resources :line_items

  resources :carts

  resources :colours

  resources :sizes

  resources :productmains

  resources :product_brand_names

  resources :product_types

  resources :products

  devise_for :users

  resources :contacts

  resources :home

  root to: 'home#index'

end
