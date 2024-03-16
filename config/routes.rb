Rails.application.routes.draw do
  resources :shops
  # this is the route to set the HOME PAGE
  root 'home#index'
  get 'products', to:"product#index"
  get'about', to:"product#about"
  get'devices', to:"device#index"
  get'devices', to:"device#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
