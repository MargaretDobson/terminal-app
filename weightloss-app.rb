# require'colorize'
require_relative "debug"
require_relative "busy_bee"
require_relative "old_is_gold"
require_relative "average_joe"
require_relative "fitness_program"
# Method to provide more readabilty of the display of the app
 def marker
    puts "******"*20
 end
# Method to get more readabilty of the display 
class String
    def magenta;        "\e[35m#{self}\e[0m" end  
    def bold;           "\e[1m#{self}\e[22m" end
    def underline;      "\e[4m#{self}\e[24m" end
end
 

# Main prompt for the application debugg by printing it on screen ("manual testing") dangerzone
debugger = Debugger.new(true)

puts " Welcome to \"Body Achieves What Mind Believe Program\""
  # add \ to let progam know we want "" to print

# getting data from user to decide BMI"   
puts "please provide your Name"
  name = gets.chomp
puts "How old are you?"
  age = gets.chomp.to_i
puts "How much do you weigh in kg?"
  weight = gets.chomp.to_f
puts "How tall are you in cm?"
  height = gets.chomp.to_f

  fitness_programs ={ one: "Busy Mums and proffesionl" , two: "Old is gold", three: "Weight loss program"}
  puts fitness_programs
puts "please choose one of the options: one(1) , two(2) or three(3) "
# calling the method for better user experience
marker 
user_choice = gets.chomp
 
#  debugger.log_message("user choice is " + user_choice) just for debugging along the way of coding
 case user_choice
    when "1" , "one"
        selected_fitness_program = BusyBee.new(name, age, weight, height)
    when  "2","two"
        selected_fitness_program = OldIsGold.new(name, age, weight, height)
    when  "3","three"
        selected_fitness_program = AverageJoe.new(name, age, weight, height)
    else
        abort "you haven't selected anyprogram please give your feedback so that we can improve our plans"
end
# showing the message to the customer about the fitness program by calling show_welcome_message method from user selected class
marker
puts selected_fitness_program.show_welcome_message
marker
# just for the old is gold fitness program to run
if (user_choice == 2 || user_choice == "two")
    puts selected_fitness_program.attendance_app    
exit        
end      
marker
#  just massage on screen to tell customer about their plan based on BMI calculation
puts "Calculated Body mass index and appropriate plan is given here\n" 
p before = body_mass_index(weight,height)
#puts selected_fitness_program.suggested_plan(user( user class changed to fitnessProgram later).body_mass_index)"change during the add of more fitness programe previous idea but later decided to have method out side our class because we don't want all arguments of tha class"
puts selected_fitness_program.suggested_plan(body_mass_index(weight,height))
marker
# asking for the user input after going through our program"
puts "Please provide your Weight after 2 weeks and update your plan".magenta
weight = gets.chomp.to_i
# checking the condition whether they get beniffited at the end of their 2 weeks fitness program if not providing them feedback
after = body_mass_index(weight,height)
    if  after >= before ? (puts "Please follow up our diet and exercise plan") :(puts "GOOD WORK")
    end    
        
     