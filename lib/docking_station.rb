require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike != nil
      @bike = nil
      Bike.new
    else
      raise "NoBikeError"
    end
  end    

  def dock(bike)
    if @bike != nil
      raise "TooManyBike"
    else  
      @bike = bike
    end  
  end

end



