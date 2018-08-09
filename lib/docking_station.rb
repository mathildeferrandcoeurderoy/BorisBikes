require './lib/bike'

class DockingStation

  attr_reader :bike, :storage

  def initialize
    @storage = []
  end

  def release_bike
    if @storage.length == 0
      raise "no bikes available"
    else
      @storage.pop
    end
  end

  def dock(bike)
    @storage << bike
  end


end
