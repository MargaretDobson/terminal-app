require_relative "fitness_program"

class User
    def initialize(name,age,weight,height)
        @name = name
        @age = age
        @weight= weight
        @height=height
    end
  #START OF BMI CALCULATOR
   def body_mass_index
     return @weight/((@height/100.0)**2)
   end

end