class DockingStation
  attr_reader :abike
  def release_bike
    fail 'No Bike Docked' if @abike.nil?
    @abike
  end

  def dock(bike)
    fail 'Dock full' if @abike != nil
    @abike = bike
  end
end

class Bike
  def working
   true
  end
end
