class DockingStation
  attr_reader :abike
  DEFAULT_CAPACITY = 20
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
    @bikes.count >= DEFAULT_CAPACITY
  end
end

class Bike
  def working
   true
  end
end
