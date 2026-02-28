Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # config/routes.rb


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :doctors, only: [:index, :show]
 resources :services, only: [:index, :show]
  resources :appointments, only: [:create]
  resources :messages, only: [:create]

  mount RailsAdmin::Engine => '/09789058t093', as: 'rails_admin'

  # Defines the root path route ("/")
  # root "posts#index"
end
