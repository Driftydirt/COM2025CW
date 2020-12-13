require 'test_helper'

class CarParkControllerTest < ActionDispatch::IntegrationTest
  test "should not save car park without correct parameters" do
    car_park = CarPark.new
    assert_not car_park.save, "Saved car park without correct parameters"
  end
end
