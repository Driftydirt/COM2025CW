class ParkingSpace < ApplicationRecord

    validates :number, :presence => true
    validates :car_park, :presence => true
    
    belongs_to :car_park
    has_many :booking
end
