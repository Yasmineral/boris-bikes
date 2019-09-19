require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
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
    @bikes.count >= 20
    end

end



