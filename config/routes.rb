Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :new, :show]
  
  resources :queries do
    resources :diagnoses, only: [:create, :show, :new]
  end

  resources :diagnoses, only: [:create, :new]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  patch '/queries/:id/upvote', to: 'diagnoses#upvote', as:'upvote'

  get "/auth/:provider/callback", to: 'sessions#google_oauth2'
  
  resources :plants do
    resources :queries, only: [:index, :create, :show, :new]
  end

  
  resources :queries, only: [:index,:create, :show, :new]

  root 'plants#index'


end