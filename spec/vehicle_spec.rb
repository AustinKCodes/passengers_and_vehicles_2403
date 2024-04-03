require ./lib/vehicle
require ./lib/passenger

RSpec.describe Vehicle do
    it "creates a vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle).to be_instance_of(Vehicle)
    end

end