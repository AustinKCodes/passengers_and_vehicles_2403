class Park
    attr_reader :name, :entry_cost

    def initialize(name, entry_cost)
        @name = name
        @entry_cost = entry_cost
    end
end