require_relative 'bike'
require_relative 'docking_station'

#created a new van class
class Van

  #the pick up method accepts a BROKEN bike and stores in in the van
  def pick_up(station)
    current_bike = station.release_bike
    fail "this bike is working" if current_bike.working? == true
    @bike  =current_bike
  end

end