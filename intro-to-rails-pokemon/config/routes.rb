Rails.application.routes.draw do

  resources :gyms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :trainers, only: [:index, :show, :new]
end
