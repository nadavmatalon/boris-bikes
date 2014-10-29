
require_relative 'bike_container'

class Station

	include BikeContainer
	
	def initialize(options = {})
		self.capacity=(options.fetch(:capacity, self.capacity))
	end

	def give_broken_bikes_to van
		if van.class == Van
			if select_broken_bikes.any?
				dock_broken_bikes_on van
				"Broken bikes loaded"
			else
				"No broken bikes to give"
			end
		else
			"That's not a van"
		end
	end

	def select_broken_bikes
		bikes.select { |bike| bike.broken? }
	end

	def dock_broken_bikes_on van
		broken_bikes = select_broken_bikes
		@bikes -= broken_bikes
		broken_bikes.each { |bike| van.dock bike }
	end

end
