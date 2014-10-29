require "van"

describe "Van" do 

	let(:van) { Van.new }

	it "should have default capacity of 10 bikes" do
		expect(van.capacity).to eq 10
	end

	it "allows setting of it's capacity on initialization" do
		expect(Van.new(capacity: 20).capacity).to eq 20
	end

end
