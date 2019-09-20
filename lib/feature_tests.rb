require_relative 'bike'
require_relative 'docking_station'
require_relative 'van'

station = DockingStation.new
my_bike = Bike.new
my_bike.report_broken
station.dock(my_bike)
van = Van.new
van.pick_up(station)
van.drop_off(Garage.new)
