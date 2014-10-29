require "garage.rb"

describe "Garage" do 

	let(:garage) { Garage.new }

	let(:bike) { Bike.new }

	it "should have default capacity of 10 bikes" do
		expect(garage.capacity).to eq 10
	end

	it "allows setting of it's capacity on initialization" do
		expect(Garage.new(capacity: 20).capacity).to eq 20
	end

	it "can fix a broken bike" do
		bike.break
		garage.dock bike
		garage.fix bike
		expect(bike.broken?).to be false
	end

	it "can fix all broken bikes at once" do
		bikes = [Bike.new(true), Bike.new, Bike.new(true)]
		bikes.each { |bike| garage.dock bike }
		garage.fix_all_broken_bikes	
		garage.bikes.each do |bike|
			expect(bike).not_to be_broken
		end
	end
end
