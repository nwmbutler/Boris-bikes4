class DockingStation
  attr_reader :abike

def initialize
  @bikes = []
end

  def release_bike
    fail 'No Bike Docked' if @bikes.empty?
    @bikes
  end

  def dock(bike)
    fail 'Dock full' if @bikes.length > 19
    @bikes << bike
  end
end

class Bike
  def working
   true
  end
end
