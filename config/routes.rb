Rails.application.routes.draw do
  resources :lessons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'courses#index'

  resources :accounts
  resources :courses
end
