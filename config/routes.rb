Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :schedules, only: [:index]
  root to: "users#index"
end
