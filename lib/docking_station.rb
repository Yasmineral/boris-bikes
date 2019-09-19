require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end  

  def release_bike
    if @bikes.empty?
      raise "NoBikeError"
    else
      @bikes.pop
      Bike.new
    end
  end    

  def dock(bike)
    if @bikes.size >= 20
      raise "TooManyBike"
    else  
      @bikes.push(bike)
    end  
  end

end



