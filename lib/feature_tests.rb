require_relative 'bike'
require_relative 'docking_station'
require_relative 'van'

station = DockingStation.new
my_bike = Bike.new
my_bike.report_broken
station.dock(Bike.new)
station.dock(my_bike)

van = Van.new
van.pick_up(station)

puts station.bikes
