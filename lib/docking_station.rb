class DockingStation
  attr_reader :abike
  def release_bike
    Bike.new
  end

  def dock(bike)
@abike = bike
  end
end

class Bike
  def working
   true
  end
end
