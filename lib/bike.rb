
class Bike

	def initialize (broken = false)
		@broken = broken
	end

	def broken?
		@broken
	end

	def break
		@broken = true
		self	
	end

	def fix
		@broken = false
		self	
	end

end

