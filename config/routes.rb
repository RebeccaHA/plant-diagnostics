Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :diagnoses

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  
  resources :plants do
    resources :queries, only: [:index, :create, :show, :new, :edit]
  end
  
  resources :queries, only: [:index,:create, :show, :new, :edit]

  root 'static#home'


end