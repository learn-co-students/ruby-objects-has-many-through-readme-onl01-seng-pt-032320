class Meal
  attr_accessor :waiter, :customer, :total, :tip
  @@all = []

  def initialize(waiter_obj, customer_obj, total, tip = 0)
    @waiter = waiter_obj
    @customer = customer_obj
    @total = total
    @tip = tip
    @@all << self
  end

  def self.all
    @@all
  end
end