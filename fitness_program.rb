require_relative "fitness_program"

class FitnessProgram
    def initialize(name,age,weight,height)
        @name = name
        @age = age
        @weight= weight
        @height=height
    end  
       #START OF BMI CALCULATOR
end

def body_mass_index(weight,height)
  return weight/((height/100.0)**2)
end
