require './lib/bike'

class DockingStation

  attr_reader :bike, :storage

  DEFAULT_SIZE = 1

  def capacity
    @capacity = DEFAULT_SIZE
  end

  def initialize
    @storage = []
  end

  def release_bike
    raise "no bikes available" if @storage.length == 0
    @storage.pop
  end

  def dock(bike)
    raise "dock full" if @storage.length == capacity  
    @storage << bike
  end


end
