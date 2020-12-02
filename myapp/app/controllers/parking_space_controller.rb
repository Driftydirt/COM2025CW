class ParkingSpaceController < ApplicationController

    def show
        @parking_space = ParkingSpace.find(params[:id])
    end

end
