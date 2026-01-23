class AssemblyLine
NUMBER_OF_CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed <= 4
      NUMBER_OF_CARS_PER_HOUR * @speed
    elsif @speed <= 8
      NUMBER_OF_CARS_PER_HOUR * @speed * 0.9
    elsif @speed <= 9
      NUMBER_OF_CARS_PER_HOUR * @speed * 0.8
    else
      NUMBER_OF_CARS_PER_HOUR * @speed * 0.77
    end
  end

  def working_items_per_minute
    (self.production_rate_per_hour / 60).to_i
  end
end
