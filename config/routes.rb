Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :cars
  resources :types
  resources :brands
  root 'cars#index'
end
