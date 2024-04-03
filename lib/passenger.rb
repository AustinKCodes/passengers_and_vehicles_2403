class Passenger
attr_reader :name, :age

    def initialize(passenger_data)
        @name = passenger_data["name"]
        @age = passenger_data["age"]
        @driver = false
    end

    def adult?
        if @age >= 18
            return true
        else
            return false
        end
    end

    def driver?
        return @driver
    end

    def drive
        return @driver = true
    end
end
