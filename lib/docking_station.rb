require './lib/bike'

class DockingStation

  attr_reader :bikes

  DEFAULT_SIZE = 1

  def capacity
    @capacity = DEFAULT_SIZE
  end

  def initialize
    @bikes = []
  end

  def release_bike
    raise "no bikes available" if @bikes.length == 0
    @bikes.pop
  end

  def dock(bike)
    raise "dock full" if @bikes.length == capacity  
    @bikes << bike
  end


end
