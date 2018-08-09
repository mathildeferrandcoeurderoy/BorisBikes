require './lib/bike'

class DockingStation

  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

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
    bikes.length == capacity
  end

  def station_empty?
    bikes.length == 0
  end


end
