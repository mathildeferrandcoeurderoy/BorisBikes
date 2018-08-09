require "docking_station"

describe DockingStation do
  let(:mockbike) {double :bike, working?: true}

  it "releases a bike" do
    #bike = Bike.new
    subject.dock(mockbike)
    expect(subject.release_bike).to eq mockbike
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
    expect(subject.bikes).to include(mockbike)
  end

  it "will not release a bike if not available" do
    expect{subject.release_bike}.to raise_error("no bikes available")
  end

#  it 'will have a storage limit' do
#   expect(subject.capacity).to be_an(Integer)
#  end

  it 'will not accept a bike if full' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(mockbike) }
    expect{subject.dock(mockbike)}.to raise_error("dock full")
  end

  # it 'checks if dock is full' do
      # 20.times { subject.dock(mockbike) }
      # expect(subject).to be_station_full
  # end

  # it {is_expected.to respond_to :station_empty?}

  it 'allows capacity to be set' do
    expect{DockingStation.new(50)}.to_not raise_error
  end

end
