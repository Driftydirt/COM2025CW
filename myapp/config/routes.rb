Rails.application.routes.draw do
  get 'car_park', to: 'car_park#car_park'
  get 'home/home'
  get 'bookings/bookings'
  resources :car_parks do
    resources :parking_spaces do
      resources :bookings
    end
  end


  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
