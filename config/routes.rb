Rails.application.routes.draw do
  resources :bookings
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'home/contacts'
  get 'home/about'
  root 'home#index'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
