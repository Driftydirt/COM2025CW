require 'test_helper'

class ParkingSpaceControllerTest < ActionDispatch::IntegrationTest
  test "should not save parking space without correct parameters" do
    parking_space = ParkingSpace.new
    assert_not parking_space.save, "Saved the parking space withouy the correct parameters"
  end
end
