require "garage.rb"

describe "Garage" do 

	let(:garage) { Garage.new(:capacity => 20) }

	let(:bike) { Bike.new }

	it "should allow setting default capacity on initialising" do
		expect(garage.capacity).to eq (20)
	end

	it "should fix broken bikes" do
		bike.break
		garage.dock bike
		garage.fix bike
		expect(bike.broken?).to be false
	end

	it "should fix all broken bikes" do
		bike_1 = Bike.new(true)
		bike_2 = Bike.new
		bike_3 = Bike.new(true)
		garage.dock bike_1
		garage.dock bike_2
		garage.dock bike_3
		garage.fix_all_broken_bikes	
		garage.bikes.each do |bike|
			expect(bike).not_to be_broken
		end
	end
end
