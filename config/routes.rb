Rails.application.routes.draw do
  resources :pgrades
  resources :myprests
  resources :prests
  resources :myevents
  resources :events
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'home#index'

  get 'home/todo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
