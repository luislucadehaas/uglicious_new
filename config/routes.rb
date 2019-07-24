Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [:new, :create, :edit, :update, :destroy, :index, :show] do
    resources :bookings, only: [:new, :create, :destroy, :update]
  end

  resources :farms, only: [:new, :create, :edit, :update, :destroy, :index, :show]
   resources :companies, only: [:new, :create, :edit, :update, :destroy, :index, :show]

   get 'log_out_farmer', to: 'pages#log_out_farmer', as: :log_out_farmer
   get 'farmer-dashboard', to: 'pages#dashboard_farmer', as: :dashboard_farmer
   get 'farmer-orders', to: 'pages#orders', as: :farmer_orders
   get 'customer-dashboard', to: 'pages#dashboard_customer', as: :dashboard_customer
   get "find", to: 'farms#find', as: :find
end
