#General purpose program for weightloss
require_relative "fitness_program"

class AverageJoe < FitnessProgram
    def show_welcome_message
  puts  "welcome to our Fitness for everyone program."
    end
    def suggested_plan(bmi)
      suggested_plan = ""
      if (bmi >= 25)
          suggested_plan = " 1.less carbohydrate based diet, small quantity plan to follow\n 2.You have an acces to our gym for all day"
      elsif (19 < bmi and bmi < 25 )
          suggested_plan = "1.mix of carbohydrate and protein based diet plan to follow\n 3.You have an access to our gym for all day "
      else
          suggested_plan = "1.High protein based diet,mutiple time diet plan to follow\n 3.You have access to our gym for all day "
      end
  end
end