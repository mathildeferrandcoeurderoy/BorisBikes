require "bike"

describe Bike do
  it "verifies if the bike is working" do
    expect(subject).to respond_to :working?
  end

    it "docks a bike" do
      expect(subject).to respond_to :dock_bike
    end
end
