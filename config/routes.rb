Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cows, only: [:index, :new, :create, :show] do
    resources :bookings, only: [ :new, :create, :index, :destroy ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
