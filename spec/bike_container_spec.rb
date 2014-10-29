require './lib/bike_container'

class ContainerHolder; 
	include BikeContainer; 
end

describe BikeContainer do

	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new }

	def fill_holder (holder)
		10.times {holder.dock(Bike.new)}
	end

	it "should accept a bike" do
    	expect(holder.bike_count).to eq(0)
    	holder.dock(bike)    
    	expect(holder.bike_count).to eq(1)
	end

	it "should release a bike" do
		holder.dock(bike)
		holder.release_bike
		expect(holder.bike_count).to eq 0
	end

	it "should not release a bike that isn't already docked" do
		bike = Bike.new
		holder.release_bike
		expect(holder.bikes).to eq []
	end

	it "should not throw error if :dock is used without an argument" do
		expect{holder.dock()}.not_to raise_error
	end

	it "should not dock anything but bikes (instances of the Bike class)" do
		str = "hello"
		holder.dock(str)
		expect(holder.bike_count).to eq 0
	end

	it "should know when it's full" do
		fill_holder(holder)
		expect(holder).to be_full
	end

	it "should not accept a bike if it's full" do
		fill_holder(holder)
		expect(holder.dock(Bike.new)).to eq "Can't dock bike" 
	end

	it "should not allow docking the same bike twice" do
		holder.dock(bike)
		holder.dock(bike)
		expect(holder.bike_count).to eq 1
	end

	it "should provide the list of available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq ([working_bike])
	end
end



