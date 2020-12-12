Rails.application.routes.draw do
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get 'dashboard/properties'
  get 'dashboard/reports'
  devise_for :accounts, :controllers => { registrations: 'registrations'}
  resources :properties
  get 'public/main'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'public#main'
end
