class CarPark < ApplicationRecord

    validates :name, :presence => true
    validates :number_spaces, :presence => true

    has_many :parking_space
end