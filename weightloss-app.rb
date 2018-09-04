# require'colorize'
require_relative "debug"
require_relative "busy_bee"
require_relative "old_is_gold"
require_relative "average_joe"
require_relative "user"
 def marker
    puts "******"*20
 end
class String
    def magenta;        "\e[35m#{self}\e[0m" end  
    def bold;           "\e[1m#{self}\e[22m" end
    def underline;      "\e[4m#{self}\e[24m" end
end
 

# Main prompt for the application
debugger = Debugger.new(true)

puts " Welcome to \"Body Achieves What Mind Believe Program\""
  # \ to let progam know we want "" to print
 fitness_programs ={ one: "Busy Mums and proffesionl" , two: "Old is gold", three: "Weight loss program"}
 puts fitness_programs
 puts "please choose one of the options: one(1) , two(2) or three(3) "
 marker
 user_choice = gets.chomp
 
 debugger.log_message("user choice is " + user_choice)
 case user_choice
    when "1" , "one"
        selected_fitness_program = BusyBee.new 
    when  "2","two"
        selected_fitness_program = OldIsGold.new
    when  "3","three"
        selected_fitness_program = AverageJoe.new
    else
        abort "you haven't selected anyprogram please give your feedback so that we can improve our plans"
end

marker
puts selected_fitness_program.show_welcome_message
marker

puts "please provide your Name"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "How much do you weigh in kg?"
weight = gets.chomp.to_f
puts "How tall are you in cm?"
height = gets.chomp.to_f

user = User.new(name, age, weight, height)
marker
if selected_fitness_program
puts " Calculated Body mass index and appropriate plan is given here\n" 
#p user.body_mass_index
before= body_mass_index(weight,height)
#puts selected_fitness_program.suggested_plan(user.body_mass_index)
puts selected_fitness_program.suggested_plan(body_mass_index(weight,height))
marker
  puts "Please provide your Weight after 2 weeks and update your plan".underline
weight = gets.chomp.to_i

after = body_mass_index(weight,height)
    if  after >= before ? (puts "Please follow up our diet and exercise plan") :(puts "GOOD WORK")
    end    
        
     