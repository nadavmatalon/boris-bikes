require_relative 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity=(options.fetch(:capacity, self.capacity))
	end

	def fix(bike)
		bike.fix if bike.broken?
	end

	def fix_all_broken_bikes 
		bikes.each { |bike| fix(bike) if bike.broken? }
	end
end
