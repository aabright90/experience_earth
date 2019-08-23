Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'user_dashboard', to: 'pages#dashboard', as: 'user_dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :show] do
    resources :bookings, only: [:show, :new, :create]
  end
  resources :bookings, only: [:destroy] do
    resources :reviews, only: [:new, :create]
  end
end
