
class Person

	def initialize (bike = nil)
		@bike = bike
	end

	def have_bike?
		@bike != nil
	end

	def break_bike
		 @bike.break
	end

	def rent_bike_from station
		if have_bike?
			"You already have a bike"
		else
			result = station.release_bike
			if result != "No bikes"
			 	@bike = result 
			 	"Bike hired"
			 else
			 	"No bikes for hire"
			 end
		end
	end

	def return_bike_to station
		if !have_bike?
			"You need to hire a bike first"
		elsif station.full?
			"Station is full"
		else
			bike_condition = !@bike.broken? ? "Bike returned in good condition" : "You returned a broken bike!"
			station.dock @bike
			@bike = nil
			bike_condition
		end
	end

end

