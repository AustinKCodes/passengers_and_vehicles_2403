require "./lib/passenger"

RSpec.describe Passenger do
    it "exists" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie).to be_instance_of(Passenger)
    end

    it "has a name" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie.name).to eq("Charlie")
    end

    it "has an age" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie.age).to eq(18)
    end

    it "can tell if its an adult" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(charlie.adult?).to eq(true)
        expect(taylor.adult?).to eq(false)
    end

    it "can tell if he drives" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie.driver?).to eq(false)
    end

    it "can change it to a driver" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        charlie.drive

        expect(charlie.driver?).to eq(true)
    end

end