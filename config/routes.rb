Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  resources :schedules, only: [:index, :new, :show, :create]
  root to: "users#index"
end
