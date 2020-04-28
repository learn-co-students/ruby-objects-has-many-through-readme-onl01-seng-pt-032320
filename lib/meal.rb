require "pry"
class Meal
    attr_accessor :waiter, :customer, :tip, :total
    @@all = []

    def initialize(waiter, customer, total, tip=0)
       # binding.pry
        @waiter = waiter
        @customer = customer
        @tip = tip
        @total = total
        @@all << self
    end

    def self.all
        @@all
    end

end