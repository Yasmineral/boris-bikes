require 'van'
require 'bike'
require 'docking_station'
require 'garage'

describe Van do

  it 'picks up broken bikes' do

    #make a van object
    van = Van.new

    #make a bike double
    bike = double ("bike")
    allow(bike).to receive(:working?).and_return(false)

    #make a station double
    station = double("station")
    allow(station).to receive(:bikes)
    #allow us to access the station (double) bike array, pop it and recieve a bike (double)
    allow(station.bikes).to receive(:pop).and_return(bike)

    #allow our van to pick up a bike
    van.pick_up(station)

    #check if the van is holding a bike
    expect((van.bike)).to eq bike
  end

  describe '#drop_off'
    it "drops off a bike, then is empty" do
      van = Van.new
      bike = Bike.new
      station = DockingStation.new
      bike.report_broken
      station.dock(bike)
      van.pick_up(station)
      van.drop_off(Garage.new)

      expect(van.bike).to eq nil

    end

end
