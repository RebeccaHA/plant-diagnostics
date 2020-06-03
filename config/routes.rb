Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  
  resources :queries do
    resources :diagnoses, only: [:index, :create, :show, :new, :edit]
  end

  resources :diagnoses, only: [:index, :create, :show, :new, :edit]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :plants do
    resources :queries, only: [:index, :create, :show, :new, :edit]
  end

  
  resources :queries, only: [:index,:create, :show, :new, :edit]

  root 'static#home'


end