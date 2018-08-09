require './lib/bike'

class DockingStation

  attr_reader :bikes
  
  def initialize(capacity)
    @capacity = capacity
    @bikes = []
  end

  DEFAULT_SIZE = 20

  def release_bike
    raise "no bikes available" if station_empty?
    bikes.pop
  end

  def dock(bike)
    raise "dock full" if station_full?
    bikes << bike
  end

private

  def station_full?
    bikes.length == DEFAULT_SIZE
  end

  def station_empty?
    bikes.length == 0
  end


end
