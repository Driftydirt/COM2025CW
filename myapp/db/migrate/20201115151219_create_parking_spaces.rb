class CreateParkingSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_spaces do |t|
      t.integer :number
      t.references :car_park

      t.timestamps
    end
  end
end
