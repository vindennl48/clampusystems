Rails.application.routes.draw do
  root "customers#index"
  resources :customers, only: [:new, :create, :update, :edit, :show, :index]
  resources :addresses, only: [:new, :create, :update, :edit, :show]
end
