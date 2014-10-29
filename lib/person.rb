
class Person

	def initialize (bike = nil)
		@bike = bike
	end

	def have_bike?
		!@bike.nil?
	end

	def break_bike
		 @bike.break
	end

	def rent_bike_from station
		if @bike.nil?
			result = station.release_bike
			if result != "No bikes"
			 	@bike = result 
			 	"Bike hired"
			 else
			 	"No bikes for hire"
			 end
		else
			"You already have a bike"
		end
	end

	def return_bike_to station
		if have_bike?
			result = station.dock @bike
			if !result.nil?
			 	message = !@bike.broken? ? "Bike returned in good condition" : "You returned a broken bike!"
			 	@bike = nil
			 	message
			 else
			   "Station is full"
			end
		else
			"You need to hire a bike first"
		end
	end
end

