require 'test_helper'

class CarParksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_park = car_parks(:one)
  end

  test "should get index" do
    get car_parks_url
    assert_response :success
  end

  test "should get new" do
    get new_car_park_url
    assert_response :success
  end

  test "should create car_park" do
    assert_difference('CarPark.count') do
      post car_parks_url, params: { car_park: {  } }
    end

    assert_redirected_to car_park_url(CarPark.last)
  end

  test "should show car_park" do
    get car_park_url(@car_park)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_park_url(@car_park)
    assert_response :success
  end

  test "should update car_park" do
    patch car_park_url(@car_park), params: { car_park: {  } }
    assert_redirected_to car_park_url(@car_park)
  end

  test "should destroy car_park" do
    assert_difference('CarPark.count', -1) do
      delete car_park_url(@car_park)
    end

    assert_redirected_to car_parks_url
  end
end
