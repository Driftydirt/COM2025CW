class BookingController < ApplicationController
  def new
  end 

  # Create method for bookings that come from the new.html.haml
  def create
      @parking_space = ParkingSpace.find(booking_params.values.at(2))
      if check_overlap
        redirect_to booking_fail_path
        return
      end
      parking_space.booking.create(booking_params)
      redirect_to root_path
  end

  # Checks all bookings in the database to see if the current space
  # has been booked for the time in the newly created booking
  def check_overlap
    bookings = @parking_space.booking.all
    booking = booking_params.values
    for currentBooking in bookings
      if booking.at(3).to_i < currentBooking.finish_time.to_i && currentBooking.start_time.to_i < booking.at(4).to_i
        return true
      end 
    end
    return false
  end

  # Create method for the bookings the come form create_alt.haml.html
  def create_alt
      @parking_space = ParkingSpace.find(params[:id])
      if check_overlap
        redirect_to booking_fail_path
        return
      end
      @parking_space.booking.create(booking_params)
      redirect_to root_path
  end
    
  def show
    @booking = Booking.find(params[:id])
  end

  def alt_new
    @parking_space = ParkingSpace.find(params[:id])
  end

  # Method for checking the values of the booking before they are saved
  def booking_params
    params.require(:booking).permit(:driver_name, :license_plate_number, :space_number, :start_time, :finish_time, :cost)
  end
end
