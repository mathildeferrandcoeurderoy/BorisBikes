require "bike"

describe Bike do
  it "verifies if the bike is working" do
    expect(subject).to respond_to :working?
  end
end