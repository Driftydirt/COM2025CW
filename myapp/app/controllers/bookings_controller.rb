class BookingsController < ApplicationController
    def new
    end 

    def create
        @booking = Booking.new(booking_params)

        @booking.save
        redirect_to @booking
    end

    private 
      def booking_params
        params.permit(:name, :text)
      end
end
