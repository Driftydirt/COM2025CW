module ParkingSpaceHelper

    def currently_booked(parking_space)
        if parking_space.booking.length > 0
            return true
        else
            return false
        end
    end
end
