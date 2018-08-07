require "docking_station"

describe DockingStation do
  it "should give response" do
    expect(docking_station = DockingStation.new, docking_station.release_bike).to eq "bike released"
  end
end
