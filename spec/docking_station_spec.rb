require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'release bike creates a bike instance' do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end

it 'expects Bike to be working' do
  expect(Bike.new.working).to eq(true)
end

it 'allows a bike to be docked' do
  expect(DockingStation.new.dock("abike")).to eq("abike")
end

end
