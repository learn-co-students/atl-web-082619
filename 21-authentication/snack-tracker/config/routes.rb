Rails.application.routes.draw do

    resources :snacks
    resources :retailers, only: [:index, :show, :new, :create]

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    get '/create_user', to: 'users#new'
    post '/create_user', to: 'users#create'
end
