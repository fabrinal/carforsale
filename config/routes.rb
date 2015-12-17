Rails.application.routes.draw do
  resources :cars
  resources :types
  resources :brands
  root 'cars#index'
end
