
require_relative "debug"
require_relative "busy_bee"
require_relative "old_is_gold"
require_relative "average_joe"
require_relative "user"

# Main prompt for the application
debugger = Debugger.new(true)

puts " Welcome to \"Body Achieves What Mind Believe Program\""
  # \ to let progam know we want "" to print
 fitness_programs ={ one: "Busy Mums and proffesionl" , two: "Old is gold", three: "Weight loss program"}
 puts fitness_programs
 puts "please choose one of the options: one(1) , two(2) or three(3) "
 puts "******"*20
 user_choice = gets.chomp
 
 i = 0
 debugger.log_message("user choice is " + user_choice)
 case user_choice
    when  "1"
        selected_fitness_program = BusyBee.new 
    when  "2"
        selected_fitness_program = OldIsGold.new
    when  "3"
        selected_fitness_program = AverageJoe.new
    else
        abort "you haven't selected anyprogram please give your feedback so that we can improve our plans"
end
puts "*****"* 20


puts "please provide your Name"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "How much do you weigh in kg?"
weight = gets.chomp.to_f
puts "How tall are you in cm?"
height = gets.chomp.to_f

user = User.new(name, age, weight, height)

puts "*****"* 20
selected_fitness_program.suggested_plan(user.body_mass_index)
  puts "*****" *20
  puts "Please provide your Weight after 2 weeks and update your plan"
#    weight = gets.chomp
#    after_index=body_mass_index(weight,customer[3])
#    if  after_index >= before_index? puts "Please follow up our diet and exercise plan": puts "GOOD WORK "

#BEGIN OLD ID GOLD PROGRAM
puts "How many days did you go to the program this week?"
puts "one, two, three, four, five, six, seven"
days_present = gets.chomp
require 'yaml'
case days_present
    when "one"
        puts "Is there any improvements you could suggest to the program"
        case_one = gets.chomp
    when "two"
        puts "Is there any improvements you could suggest to the program"
        case_one = gets.chomp
    when "three"
        puts "Is there any improvements you could suggest to the program"
        case_one = gets.chomp
    when "four"
        puts "Is there any improvements you could suggest to the program"
        case_one = gets.chomp
    when "five"
        puts "Is there any improvements you could suggest to the program"
        case_one = gets.chomp
    when "six"
        puts "Is there any improvements you could suggest to the program"
        case_one = gets.chomp
    when "seven"
        puts "Is there any improvements you could suggest to the program"
        
    end



