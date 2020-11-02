Rails.application.routes.draw do
  resources :properties
  devise_for :accounts
  get 'public/main'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'public#main'
end
