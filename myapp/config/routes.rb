Rails.application.routes.draw do
  get 'car_park', to: 'car_park#car_park'
  get 'home/home'
  get 'booking/new', to: 'booking#new'
  get 'booking/show/:id', to: 'booking#show', as:'booking'
  get 'booking/alt_new/:id', to: 'booking#alt_new', as: 'booking/alt_new'
  get 'parking_space/:id', to: 'parking_space#show', as: 'parking_space'
  
  post 'booking/alt_new/:id', to: 'booking#create_alt'
  post 'booking/new', to: 'booking#create'
  resources :car_parks do
    resources :parking_spaces do
      resources :bookings
    end
  end


  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
