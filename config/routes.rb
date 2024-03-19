Rails.application.routes.draw do
  resources :device
  resources :shops
  resources :categories
  resources :dogs
  # this is the route to set the HOME PAGE
  root 'home#index'
  get 'products', to:"product#index"
  get'about', to:"product#about"
  get'devices', to:"device#index"
  get'devices', to:"device#about"
  get'users', to:"user#index"
  get'dogs', to:"dogs#index"
  get 'users/:id', to:"user#show"
  get '/search', to: 'search#index', as: :search
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
