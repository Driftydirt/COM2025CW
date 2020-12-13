require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should not save booking without correct parameters" do
    booking = Booking.new
    assert_not booking.save, "Saved the booking without the correct parameters"
  end
end
