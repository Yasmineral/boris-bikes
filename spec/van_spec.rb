require 'van'

describe Van do

  it 'picks up broken bikes' do


    van = Van.new

    #make a bike double
    bike = double ("bike")

    #make a station double
    station = double("station")

    #allow the bike double to return false when asked if its working
    allow(bike).to receive(:working?).and_return(false)

    #allow station to recieve the message .dock
    allow(station).to receive(:dock)

    #allow station to react to release bike and give out a bike
    allow(station).to receive(:release_bike).and_return(bike)

    #dock our bike(double) in our station(double)
    station.dock(bike)

    #allow our van to pick up a bike
    van.pick_up(station)

    #check if the van is holding a bike
    expect((van.bike)).to eq bike
  end

end
