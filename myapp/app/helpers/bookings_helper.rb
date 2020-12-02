module BookingsHelper

    def get_cost(booking)
        return (booking.finish_time.to_i-booking.start_time.to_i)/100
    end   
end
