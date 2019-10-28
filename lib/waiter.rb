class Waiter
attr_accessor :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    @meals=[]
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    meal = Meal.new(self, customer, total, tip)
    @meals << meal
      
  end
  
  def meals
    @meals
    
  end
  
end