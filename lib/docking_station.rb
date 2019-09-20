require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity
  attr_accessor :bikes

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'NoBikeError' if @bikes.empty?
    current_bike = @bikes.pop
    if current_bike.working?
      current_bike
    else
      fail 'FaultyBikeError'
    end
  end

  def dock(bike)
    fail 'TooManyBike' if full?
    @bikes << bike
    end

    private

    def full?
    @bikes.count >= DEFAULT_CAPACITY
    end

end
