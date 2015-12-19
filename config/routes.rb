Rails.application.routes.draw do
  get 'homepage/index'

  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :cars
  resources :types
  resources :brands
  
  root 'homepage#index'
end
