Rails.application.routes.draw do

  resources :pictures
  resources :details
  resources :examples
  resources :meanings
  resources :words
  resources :likes
  resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'words#index'
  resources :sessions
  resources :users

  resources :meanings do
    resources :likes, only: [:create, :destroy], format: "json"
  end
  resources :details do
    resources :likes, only: [:create, :destroy], format: "json"
  end
  resources :pictures do
    resources :likes, only: [:create, :destroy],format: "json"
  end

  get '/welcome', to: "sessions#new", as: :welcome
  get '/logout' => 'sessions#destroy', :as => :logout


end
