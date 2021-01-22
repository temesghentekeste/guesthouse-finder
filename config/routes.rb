Rails.application.routes.draw do
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get 'dashboard/properties'
  get 'dashboard/reports'
  devise_for :accounts, :controllers => { registrations: 'registrations'}
  resources :properties
  get 'public/main'
  get 'home/index'
  root 'public#main'
  
  get '/profile/:id' => 'dashboard#profile', as: :profile
  post '/agent/message' => 'properties#email_agent', as: :email_agent
  
end
