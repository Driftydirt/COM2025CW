class CarParkController < ApplicationController
  def car_park
    @car_park = CarPark.all
  end

end