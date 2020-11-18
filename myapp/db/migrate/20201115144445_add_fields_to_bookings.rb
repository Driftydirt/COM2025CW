class AddFieldsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :start_time, :string
    add_column :bookings, :finish_time, :string
    add_column :bookings, :cost, :string
  end
end
