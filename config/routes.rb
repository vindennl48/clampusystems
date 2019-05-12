Rails.application.routes.draw do
  root "customers#index"
  resources :customers, only: [:new, :create, :update, :edit, :index]
end
