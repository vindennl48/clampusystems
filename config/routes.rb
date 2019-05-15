Rails.application.routes.draw do
  root "customers#index"
  resources :customers,   only: [:new, :create, :update, :edit, :show, :index, :destroy]
  resources :addresses,   only: [:new, :create, :update, :edit, :show, :destroy]
  resources :orders,      only: [:new, :create, :update, :edit, :show, :index, :destroy]
  resources :order_items, only: [:new, :create, :update, :edit, :show, :destroy]
end
