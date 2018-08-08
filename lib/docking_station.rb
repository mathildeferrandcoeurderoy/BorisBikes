<<<<<<< HEAD
# You have to alter the DockingStation class so release_bike returns a new instance of the Bike class.
require './lib/bike'
=======
require_relative 'bike'
>>>>>>> 01fb34badab4b384c18419671a6ba6a41ce4b60c

class DockingStation
  def release_bike
    Bike.new
  end
end
