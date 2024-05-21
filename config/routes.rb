Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "tasks#index"
  get "/tasks", to: "tasks#index", as: :home
  get "tasks/:id", to: "tasks#details", as: :task
  get "post", to: "tasks#post", as: :post
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "/tasks/:id", to: "tasks#change"
  delete "tasks/:id", to: "tasks#destroy", as: :destroy
end
