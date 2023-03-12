Rails.application.routes.draw do
  resources :seccions
  resources :pelotons
  resources :compania
  resources :calificacions
  resources :anios
  resources :tipo_pruebas
  resources :tipos
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
    post '/signup', to: 'registrations#create'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end 
end
