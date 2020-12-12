Rails.application.routes.draw do
  resources :tickets
  root 'home#index'
  get 'home/contacts'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
