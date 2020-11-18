class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :driver_name
      t.string :license_plate_number
      t.integer :space_number
      t.references :parking_space, foreign_key: true

      t.timestamps
    end
  end
end
