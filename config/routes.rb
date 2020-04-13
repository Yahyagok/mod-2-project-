Rails.application.routes.draw do
  resources :casts
  resources :celebrities
  resources :ratings
  resources :reviews
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
