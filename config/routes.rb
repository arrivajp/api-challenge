Rails.application.routes.draw do

  resources :details
  resources :examples
  resources :meanings
  resources :words
  resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'words#index'
  resources :sessions
  resources :users

  get '/welcome', to: "sessions#new", as: :welcome
  get '/logout' => 'sessions#destroy', :as => :logout


end
