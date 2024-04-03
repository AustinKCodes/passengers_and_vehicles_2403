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
end