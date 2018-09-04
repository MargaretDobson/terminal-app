#Fitness program for seniors over 60
require_relative "fitness_program"

class OldIsGold < FitnessProgram
    def show_welcome_message
        puts "welcome to our Old is gold program for over 60age people\n please provide your Name, Age, Weightin Kg. and Height cm."
    end
end