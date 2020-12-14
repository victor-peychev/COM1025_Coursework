Rails.application.routes.draw do
  resources :bookings
  devise_for :users
  get 'home/contacts'
  get 'home/about'
  root 'home#index'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
