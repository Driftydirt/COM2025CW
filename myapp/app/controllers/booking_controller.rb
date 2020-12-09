class BookingController < ApplicationController
  def new
  end 

  def create
      parking_space = ParkingSpace.find(:booking.id)
      parking_space.booking.create(booking_params)
  end

  def create_alt
      @parking_space = ParkingSpace.find(params[:id])
      bookings = @parking_space.booking.all.to_a
      available_times = generate_available_times(bookings)
      booking = booking_params.values
      booking_start_time = booking.at(3).to_i
      booking_finish_time = booking.at(4).to_i
      puts booking_start_time
      puts booking_finish_time
      if available_times.at(booking_start_time / 100) == "booked" || available_times.at(booking_finish_time / 100) == "booked"
        redirect_to booking_fail_path
        return
      end
      duration_of_stay = (booking_finish_time - booking_start_time - 100) / 100
      duration_of_stay.times do |i|
        if available_times.at((booking_start_time) / 100 + i) == true
          redirect_to booking_fail_path
          return
        end
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
