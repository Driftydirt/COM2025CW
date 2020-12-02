class BookingController < ApplicationController
    def new
    end 

    def create
    end

    def create_alt
        @parking_space = ParkingSpace.find(params[:id])
        @parking_space.booking.create(booking_params)
        redirect_to root_path
    end
    
    def show
        @booking = Booking.find(params[:id])
    end

    def alt_new
      @parking_space = ParkingSpace.find(params[:id])
    end

    private 
      def booking_params
        params.require(:booking).permit(:driver_name, :license_plate_number, :space_number, :start_time, :finish_time, :cost)
      end
end
