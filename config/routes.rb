Rails.application.routes.draw do
  root "customers#index"
  resources :customers,          only: [:new, :create, :update, :edit, :show, :index, :destroy]
  resources :addresses,          only: [:new, :create, :update, :edit, :show, :destroy]
  resources :orders,             only: [:new, :create, :update, :edit, :show, :index, :destroy]
  resources :order_items,        only: [:new, :create, :update, :edit, :show, :destroy]
  resources :packages,           only: [:new, :create, :update, :edit, :show, :destroy]
  resources :shipping_companies, only: [:new, :create, :update, :edit, :show, :index, :destroy]
  resources :payments,           only: [:new, :create, :update, :edit, :show, :destroy]
  resources :credit_cards,       only: [:new, :create, :update, :edit, :show, :destroy]
end
