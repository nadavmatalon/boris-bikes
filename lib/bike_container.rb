module BikeContainer

    DEFAULT_CAPACITY = 10

    def bikes
        @bikes ||= []
    end

    def capacity
        @capacity ||= DEFAULT_CAPACITY
    end

    def capacity=(value)
        @capacity = value
    end

    def bike_count
        bikes.count
    end

    def dock(bike = nil)
        if full? || bikes.include?(bike) || bike.class != Bike
            "Can't dock bike"
        else
            bikes << bike
            "Docked bike"
        end
    end

    def release_bike
        if bike_count > 0
            released_bike = bikes.first
            @bikes.shift
            released_bike
        else
            "No bikes"
        end
    end

    def full?
        bike_count == capacity
    end

    def available_bikes
        bikes.reject {|bike| bike.broken?}
    end
end
