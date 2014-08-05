module BikeContainer

    DEFAULT_CAPACITY = 10

    def bikes
        @bikes ||= []
        @docked_bikes ||= 0
        @bikes
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
        raise "Holder is full" if full?
        bikes << bike if ((bike.is_a?Bike) && (!bikes.include?(bike)))
        @docked_bikes = bikes.count
    end

    def release(bike = nil)
        bikes.delete(bike) if bikes.include?(bike)
        @docked_bikes = bikes.count
    end

    def full?
        bike_count == capacity
    end

    def available_bikes
        bikes.reject {|bike| bike.broken?}
    end
end
