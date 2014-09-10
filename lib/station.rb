
require_relative 'bike_container'

class Station

	include BikeContainer
	
	def initialize(options = {})
		self.capacity=(options.fetch(:capacity, self.capacity))
	end

	def give_broken_bikes_to van
		if van.class == Van
			broken_bikes = bikes.select { |bike| bike.broken? }
			if broken_bikes.any?
				@bikes -= broken_bikes
				@docked_bikes = bike_count
				broken_bikes.each { |bike| van.dock bike }
				"Broken bikes loaded"
			else
				"No broken bikes to give"
			end
		else
			"That's not a van"
		end
	end

end
