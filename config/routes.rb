OnlineStore::Application.routes.draw do
  devise_for :users

  resources :contacts

  resources :home

  root to: 'home#index'

end
