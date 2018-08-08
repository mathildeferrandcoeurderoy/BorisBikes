require "docking_station"

describe DockingStation do
  it "releases a bike" do
    expect(subject).to respond_to :release_bike
  end

  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 01fb34badab4b384c18419671a6ba6a41ce4b60c
