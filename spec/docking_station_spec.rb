require "docking_station"

describe DockingStation do
  let(:mockbike) {double :bike, working?: true}

  describe '#release_bike' do
    it "releases a bike" do
      #bike = Bike.new
      subject.dock(mockbike)
      expect(subject.release_bike).to eq mockbike
    end
  end

  it "releases working bikes" do
    #bike = subject.release_bike
    expect(mockbike).to be_working
  end

  it "docks a bike" do
    #bike = Bike.new
    expect(subject.dock(mockbike)).to include(mockbike)
  end

  it "shows bike availability" do
    #bike = Bike.new
    subject.dock(mockbike)
    expect(subject.storage).to include(mockbike)
  end

  it "will not release a bike if not available" do
    expect{subject.release_bike}.to raise_error("no bikes available")
  end

end
