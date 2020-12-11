class BookingController < ApplicationController
  def new
  end 

  def create
      @parking_space = ParkingSpace.find(booking_params.values.at(2))
      if check_overlap
        redirect_to booking_fail_path
        return
      end
      parking_space.booking.create(booking_params)
  end

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

   
  def booking_params
    params.require(:booking).permit(:driver_name, :license_plate_number, :space_number, :start_time, :finish_time, :cost)
  end

  def generate_available_times(bookings)
    available_times = Array.new(24)
    for booking in bookings do
      available_times.insert(booking.finish_time.to_i / 100, "booked")
      available_times.insert(booking.start_time.to_i / 100, "booked")
    end
    return available_times 
  end
end
