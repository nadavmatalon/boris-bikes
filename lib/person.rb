
class Person

	def initialize(bike = nil)
		@bike = bike
	end

	def have_bike?
		!@bike.nil?
	end

	def break_bike
		 @bike.break!
	end

	def rent_bike_from (station)
		@bike = station.release_bike
	end

	def return_bike_to (station)
		@bike = station.get_back_bike
	end
end

