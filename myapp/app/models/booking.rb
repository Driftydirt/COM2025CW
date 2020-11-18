class Booking < ApplicationRecord
  attr_accessible :driver_name, :license_plate_number, :space_number, :parking_space, :start_time, :finish_time, :cost
  
  belongs_to :parking_space
end
