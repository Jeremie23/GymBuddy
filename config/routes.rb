Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # resources :profiles do
  #   resources :objectifs
  #   resources :preferences
  #   resources :matches
  # end
  resources :profiles, only: [:new, :create]
  resources :objectifs, only: [:new, :create]
  resources :preferences, only: [:new, :create]

  resources :gyms do
    resources :preferences
  end
end
