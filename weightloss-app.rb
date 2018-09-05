require 'catpix'
require_relative "debug"
require_relative "busy_bee"
require_relative "old_is_gold"
require_relative "average_joe"
require_relative "fitness_program"

# Method to provide more readabilty of the display of the app
 def marker
    puts "******"*20
 end

# Method to inhance the screen display 
class String
    def magenta;        "\e[35m#{self}\e[0m" end  
end
 

# Main prompt for the application debugg by printing it on screen ("manual testing") dangerzone

debugger = Debugger.new(true)

# Add \ to let progam know we want "" to print
puts " Welcome to \"Body Achieves What Mind Believe Program\""
  
# Getting data from user to calculate BMI"   
puts "please provide your Name"
  name = gets.chomp
puts "How old are you?"
  age = gets.chomp.to_i
puts "How much do you weigh in kg?"
  weight = gets.chomp.to_f
puts "How tall are you in cm?"
  height = gets.chomp.to_f

fitness_programs = { one: "Busy Mums and proffesionl" , two: "Old is gold", three: "Weight loss program"}
puts fitness_programs
puts "please choose one of the options: one(1) , two(2) or three(3) "

# Calling the method for better user experience
marker 
user_choice = gets.chomp
 
# Debugger.log_message("user choice is " + user_choice) just for debugging along the way of coding
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

# Showing the message to the customer about the fitness program by calling show_welcome_message method from user selected class
marker
puts selected_fitness_program.show_welcome_message
marker

# Just for the old is gold fitness program to run
if (user_choice == 2 || user_choice == "two")
    puts selected_fitness_program.attendance_app(0)    
exit        
end      
marker

#  Message on screen to tell customer about their plan based on BMI calculation
puts "Calculated Body mass index and appropriate plan is given here\n" 
before = body_mass_index(weight,height)
puts before.to_i
puts selected_fitness_program.suggested_plan(body_mass_index(weight,height))
marker

# Asking for the user input after been in our fitness program for 2 weeks"
puts "Please provide your Weight after 2 weeks and update your plan".magenta
weight = gets.chomp.to_i

# Checking the condition whether they get beniffited at the end of their 2 weeks fitness program if not providing them feedback
after = body_mass_index(weight,height)
    if  after >= before ? (puts "Please follow up our diet and exercise plan") :(puts "GOOD WORK")
    end

# Included gem to pop up the .jpg file at the end of the fitness app
Catpix::print_image "download.jpg"  
