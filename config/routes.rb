Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :meals
  resources :sports
  resources :plans
  resources :activities
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
