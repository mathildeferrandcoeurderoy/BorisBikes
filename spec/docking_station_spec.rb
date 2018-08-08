require "docking_station"

describe DockingStation do
  
  describe '#release_bike' do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "shows bike availability" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
