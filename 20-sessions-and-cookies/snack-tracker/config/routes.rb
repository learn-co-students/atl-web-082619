Rails.application.routes.draw do
  get "/superfunhome", to: "snacks#home", as: :home # Snack Controller; 'home' action/method
  resources :snacks
  resources :retailers, only: [:index, :show, :new, :create]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#logout"
end
