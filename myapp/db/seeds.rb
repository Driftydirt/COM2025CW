# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
booking_1 = Booking.create(:driver_name => "A. Driver", :license_plate_number => "ABCD", :space_number => 1, :start_time => 1300, :finish_time => 1400, :cost => 2)
booking_2 = Booking.create(:driver_name => "A. Driver", :license_plate_number => "EFGH", :space_number => 1, :start_time => 1600, :finish_time => 1700, :cost => 2)
bookings_1 = ([booking_1, booking_2])

space_1 = ParkingSpace.create(:number => 11, :car_park_id => 1, :booking => bookings_1)
space_2 = ParkingSpace.create(:number => 12, :car_park_id => 1)
space_3 = ParkingSpace.create(:number => 13, :car_park_id => 1)
space_4 = ParkingSpace.create(:number => 14, :car_park_id => 1)
space_5 = ParkingSpace.create(:number => 15, :car_park_id => 1)
space_6 = ParkingSpace.create(:number => 16, :car_park_id => 1)
space_7 = ParkingSpace.create(:number => 17, :car_park_id => 1)
space_8 = ParkingSpace.create(:number => 18, :car_park_id => 1)
space_9 = ParkingSpace.create(:number => 19, :car_park_id => 1)
space_10 = ParkingSpace.create(:number => 110, :car_park_id => 1)
space_11 = ParkingSpace.create(:number => 21, :car_park_id => 1)





spaces = ([space_1, space_2, space_3, space_4, space_5, space_6, space_7, space_8, space_9, space_10, space_11 ])
car_park_1 = CarPark.create(:name => 'Car Park 1', :number_spaces => 15, :parking_space => spaces)


