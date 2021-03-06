Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cows, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :show, :index ]
  resources :users, only: [ :show ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
