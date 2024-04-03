class Vehicle
    attr_reader :year, :make, :model, :speeding, :passengers

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
        @passengers = []
    end

    def speeding?
        return @speeding
    end

    def speed
        return @speeding = true
    end
end