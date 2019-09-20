require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end  

  def release_bike
    fail 'NoBikeError' if @bikes.empty?
    @bikes.pop
    Bike.new
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



