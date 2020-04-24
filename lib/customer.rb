require 'pry'
class Customer
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter_obj, total_obj, tip=0)
    Meal.new(waiter_obj, self, total_obj, tip)
  end
  
  def meals
    Meal.all.select{|m| m.customer == self}
  end
  
  def waiters
    meals.collect{ |m| m.waiter}
  end
  
end