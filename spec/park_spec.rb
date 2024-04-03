require './lib/vehicle'
require './lib/passenger'
require '.lib/park'

RSpec.describe Park do
    it "exists" do
        yellowstone = Park.new("Yellowstone National Park", "$25")

        expect(yellowstone).to be_instance_of(Park)
    end
end