Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/my_events', to: 'events#my_events'
  resources :events do
    resources :bookings, only: :create
  end
  resources :bookings, only: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
