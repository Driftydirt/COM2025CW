module CarParkHelper
    def set_num_of_rows(car_park)
        if car_park.number_spaces % 10 > 0
          return (car_park.number_spaces / 10) + 1
        else
          return (car_park.number_spaces / 10)
        end
    end
end
