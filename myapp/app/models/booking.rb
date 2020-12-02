class Booking < ApplicationRecord
  validates :driver_name, :presence => true
  validates :license_plate_number, :presence => true
  validates :space_number, :presence => true
  validates :start_time, :presence => true
  validates :finish_time, :presence => true
  validates :cost, :presence => true

  belongs_to :parking_space

  def cost
    (self.finish_time.to_i-self.start_time.to_i)/100
  end
end
