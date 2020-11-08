Rails.application.routes.draw do
  get 'home/home'
  get 'welcome/index'
  resources :car_parks
  resources :bookings

  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end