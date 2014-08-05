
require_relative 'bike_container'

class Station

	include BikeContainer
	
	def initialize(options = {})
		self.capacity=(options.fetch(:capacity, self.capacity))
	end
end
