Rails.application.routes.draw do
  # get 'snacks/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/superfunhome", to: "snacks#home", as: :home # Snack Controller; 'home' action/method
  # get "/snacks", to: "snacks#index"
  resources :snacks

end
