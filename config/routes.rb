Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "dogs", to: "dogs#index"
  get "dogs/:id/edit", to: "dogs#edit"
  patch "dogs/:id", to: "dogs#update"
  # Defines the root path route ("/")
  delete '/dogs/:id', to: 'dogs#destroy'
  get "dogs/new", to: "dogs#new"
  post "dogs", to: "dogs#create"
  get "pages/:id", to: "pages#show"

end
