OnlineStore::Application.routes.draw do
  resources :products


  devise_for :users

  resources :contacts

  resources :home

  root to: 'home#index'

end
