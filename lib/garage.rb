require_relative 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity=(options.fetch(:capacity, self.capacity))
		# self.bike_count = options.fetch(:bike_count, bike_count)
		@docked_bikes ||= 0
	end

	def fix(bike)
		if bike.broken?
			bike.fix
		end
	end

	def fix_all_broken_bikes 
		bikes.each {|bike| fix(bike) if (bike.broken?)}
	end
end
