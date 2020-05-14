class DockingStation
  attr_reader :abike

def initialize
  @bikes = []
end

  def release_bike
    fail 'No Bike Docked' if empty?
    @bikes
  end

  def dock(bike)
    fail 'Dock full' if full?
    @bikes << bike
  end

private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= 20
  end
end

class Bike
  def working
   true
  end
end
