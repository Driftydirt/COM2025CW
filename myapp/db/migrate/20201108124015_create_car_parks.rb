class CreateCarParks < ActiveRecord::Migration[5.2]
  def change
    create_table :car_parks do |t|

      t.timestamps
    end
  end
end
