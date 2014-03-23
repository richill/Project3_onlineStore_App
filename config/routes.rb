OnlineStore::Application.routes.draw do

  resources :admins


  resources :shoes


  resources :accessories


  resources :menstores


resources :products do
  collection { post :search, to: 'products#index' }
end

  resources :images

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

  resources :bags

  post '/products/:id/addcomment', to: 'products#addcomment'

  root to: 'home#index'

end
