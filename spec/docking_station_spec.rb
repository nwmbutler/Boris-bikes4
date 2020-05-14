require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  xit 'release bike creates a bike instance' do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end

it 'expects Bike to be working' do
  expect(Bike.new.working).to eq(true)
end

it 'allows a bike to be docked' do
  expect(DockingStation.new.dock("abike")).to include("abike")
end

  it 'raise error when @bikes is nil' do
    expect{DockingStation.new.release_bike}.to raise_error('No Bike Docked')
  end

it 'raises an error when docking station is full' do
  docking = DockingStation.new
  20.times { docking.dock("bike") }
  expect{docking.dock("bike")}.to raise_error('Dock full')
end

end
