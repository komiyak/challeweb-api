Rails.application.routes.draw do
  resources :years, only: [:index]
  resources :schools, only: [:index]
  resources :users, only: [:index]
end
