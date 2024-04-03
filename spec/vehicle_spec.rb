require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    it "creates a vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle).to be_instance_of(Vehicle)
    end

    it "returns the year of the vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.year).to eq("2001")
    end

    it "returns make of vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.make).to eq("Honda")
    end

    it "returns model of vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.model).to eq("Civic")
    end

    it "reads if the vehicle is speeding" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.speeding?).to eq(false)
    end

    it "changes speeding vaule" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        vehicle.speed

        expect(vehicle.speeding?).to eq(true)
    end

    it "shows how many passengers are in the vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.passengers).to eq([])
    end

    it "adds passengers to the vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        vehicle.add_passenger(charlie)
        vehicle.add_passenger(jude)
        vehicle.add_passenger(taylor)

        expect(vehicle.passengers).to eq([charlie, jude, taylor])
        #Had some issues figuring out how to write the expect statement for this
    end

    it "knows how many adults are in the vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        
    end
end