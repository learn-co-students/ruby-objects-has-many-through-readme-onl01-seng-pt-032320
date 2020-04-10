class Customer
  attr_accessor :name, :age
  @@all = Array.new

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def new_meal(waiter, total, tip=0)#Creating the Has-Many-Through relationship
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select do |meal| #seeing the meals they have eaten at the resturant
      meal.customer == self
    end
  end

  def waiters #seeing the waiters that served them in the past
    meals.map do |meal|
      meal.waiter
    end
  end

  def self.all
    @@all
  end
end
