Rails.application.routes.draw do

  resources :examples
  resources :meanings
  resources :words
  resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'users#index'
  resources :sessions
  resources :users

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout


end
