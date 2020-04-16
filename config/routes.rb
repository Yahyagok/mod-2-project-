Rails.application.routes.draw do
  resources :favorites
  resources :casts
  resources :celebrities
  resources :ratings
  resources :reviews
  resources :movies
  resources :users

  get '/sessions/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/sessions/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy'
end
