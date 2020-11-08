require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Car Park Bookings'
    assert_select 'h1', 'Car Park Bookings'
    assert_select 'p', 'Welcome to my car park bookings site!'
  end

end
