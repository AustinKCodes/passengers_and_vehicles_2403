class Vehicle
    attr_reader :year, :make, :model

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
    end

    def speeding?
        return @speeding
    end
end