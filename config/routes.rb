Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:new, :create]

   get 'dashboard_farmer', to: 'pages#dashboard_farmer', as: :dashboard_farmer
end
