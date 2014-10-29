require './lib/station'

describe Station do

	let(:station) { Station.new }

	it "should have default capacity of 10 bikes" do
		expect(station.capacity).to eq 10
	end

	it "allows setting of it's capacity on initialization" do
		expect(Station.new(capacity: 20).capacity).to eq 20
	end

	it "can give broken bikes to a van" do
		bike = Bike.new(true)
		van = Van.new
		station.dock bike
		expect(station.give_broken_bikes_to van).to eq "Broken bikes loaded"
	end

end

