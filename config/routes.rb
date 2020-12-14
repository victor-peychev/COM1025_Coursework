Rails.application.routes.draw do
  resources :flights
  resources :bookings
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  #didn't add contact, it only causes problems
  get 'home/contacts'
  get 'home/about'
  root 'flights#index'
  root to: 'flights#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
