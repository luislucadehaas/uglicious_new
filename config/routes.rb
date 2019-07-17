Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [:new, :create, :edit, :update, :destroy, :index, :show] do
resources :bookings, only: [:new, :create, :destroy, :update]
end

   resources :farms, only: [:new, :create, :destroy, :update]

   get 'farmer-dashboard', to: 'pages#dashboard_farmer', as: :dashboard_farmer

end
