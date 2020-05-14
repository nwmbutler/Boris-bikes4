class DockingStation
  attr_reader :abike
  def release_bike
    if @abike.nil?
      fail 'No Bike Docked'
    else
      @abike
    end 
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
