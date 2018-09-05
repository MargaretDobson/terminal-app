#Fitness program for seniors over 60
require_relative "fitness_program"
class OldIsGold < FitnessProgram
    def show_welcome_message
        puts "welcome to our Old is gold program for over 60age people\n Please find your plan below\n 1.Laughter YoGa\n 2.Dancing Tea Party\n 3.Easy-Peasy exercise"
    end
    def attendance_app
        puts "please press Y if you have come today"
        come=Array[]
      7.times do |x|
        come << gets.chomp
      end 
      p come
       days=come.count("y") 
       if days <= 2
        puts "Please provide your feedback for better service"
      elsif days <= 4
        puts "Please provide your feedback to make services more enjoyable"
      else
        puts "Thank You for your patronage"
      end 
       
    end     
        
end
