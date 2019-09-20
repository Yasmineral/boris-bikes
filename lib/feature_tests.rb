require_relative 'bike'
require_relative 'docking_station'

station = DockingStation.new
my_bike = Bike.new
my_bike.report_broken

station.dock(my_bike)
