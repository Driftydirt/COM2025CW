class CreateCarParks < ActiveRecord::Migration[5.2]
  def change
    create_table :car_parks do |t|
      t.string :name
      t.integer :number_spaces
      t.string :parking_space

      t.timestamps
    end
  end
end
