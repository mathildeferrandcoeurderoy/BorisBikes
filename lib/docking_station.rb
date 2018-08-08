# You have to alter the DockingStation class so release_bike returns a new instance of the Bike class.
require './lib/bike'

class DockingStation
  def release_bike
    Bike.new
  end
end
