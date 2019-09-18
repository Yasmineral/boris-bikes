require 'docking_station'

describe DockingStation do

  it 'releases a bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'responds to dock with one argument' do
    expect(subject).to respond_to(:dock).with(1)
  end

it { is_expected.to respond_to(:bike)}

it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike 
end

end 
