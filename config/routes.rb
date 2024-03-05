Rails.application.routes.draw do
  devise_for :users
  root to: "dogs#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # get "up" => "rails/health#show", as: :rails_health_check
  # get "dogs", to: "dogs#index"
  # get "dogs/new", to: "dogs#new"
  # get "dogs/:id", to: "dogs#show"
  # get "dogs/:id/edit", to: "dogs#edit"
  # post "dogs", to: "dogs#create"
  # patch "dogs/:id", to: "dogs#update"
  # delete '/dogs/:id', to: 'dogs#destroy'

  # get '/rentals', to: 'rentals#index'
  # get "rentals/new", to: "rentals#new"
  # get '/rentals/:id', to: 'rentals#show'
  # post "rentals", to: "rentals#create"
  # get "rentals/:id/edit", to: "rentals#edit"
  # patch "rentals/:id", to: "rentals#update"
  # delete '/rentals/:id', to: 'rentals#destroy'
  resources :pages
  resources :dogs do
    resources :rentals, only: [:new, :create]
  end
  resources :rentals, except: [:new, :create]
end
