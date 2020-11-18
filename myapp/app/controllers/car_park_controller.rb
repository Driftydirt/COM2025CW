class CarParkController < ApplicationController
  def create
    CarPark.create(car_park_params)
  end
  def car_park
    @car_park = CarPark.all
  end

  private

  def car_park_params
    params.require(:car_park).permit(:name, :number_spaces)
  end
end
