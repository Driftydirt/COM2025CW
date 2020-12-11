Rails.application.routes.draw do
  get 'car_park', to: 'car_park#car_park'
  get 'home/home'
  get 'booking/new', to: 'booking#new'
  get 'booking/show/:id', to: 'booking#show', as:'booking'
  get 'booking/alt_new/:id', to: 'booking#alt_new', as: 'booking/alt_new'
  get 'parking_space/:id', to: 'parking_space#show', as: 'parking_space'
  get 'contact_owner', to: 'contact_owner#index'
  get 'booking/fail'
  get 'contact_owner/preview/:email_params', to: 'contact_owner#preview', as: 'contact_owner/preview'
  post 'booking/alt_new/:id', to: 'booking#create_alt'
  post 'booking/new', to: 'booking#create'
  post 'contact_owner/preview/:email_params', to: 'contact_owner#preview'

  resources :car_parks do
    resources :parking_spaces do
      resources :bookings
    end
  end
  resources :contact_owner


  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
