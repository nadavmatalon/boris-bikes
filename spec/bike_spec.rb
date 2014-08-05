require "bike"

describe Bike do

	let(:bike) { Bike.new }

	it "is initially not broken" do
		expect(bike.broken?).to be false
	end

	it "can break" do
		bike.break!
		expect(bike.broken?).to be true
	end

	it "can be fixed" do
		bike.break!.fix!
		expect(bike.broken?).to be false
	end
end
