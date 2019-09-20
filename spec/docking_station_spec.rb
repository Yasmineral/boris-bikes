require 'docking_station'

describe DockingStation do

  it 'releases a bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes from occupied stations' do
    docking_station = DockingStation.new
    docking_station.dock(Bike.new)
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  it 'responds to dock with one argument' do
    expect(subject).to respond_to(:dock).with(1)
  end

it { is_expected.to respond_to(:bikes)}

it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bikes).to eq [bike]
end

it 'raises an error when there are no available bikes' do
  docking_station = DockingStation.new 
  expect {docking_station.release_bike}.to raise_error("NoBikeError")
end
 
it 'raises an error when there is a bike already docked' do
  ds = DockingStation.new
  DockingStation::DEFAULT_CAPACITY.times {ds.dock(Bike.new)}
  expect {ds.dock(Bike.new)}.to raise_error("TooManyBike")
end

it {expect(DockingStation.new(5).capacity).to eq 5}
it {expect(DockingStation.new.capacity).to eq 20}

end 

#refactor later like James did / group tests by method