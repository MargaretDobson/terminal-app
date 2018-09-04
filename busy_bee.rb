require_relative "fitness_program"

# The fitness program for busy moms and professionals

class BusyBee < FitnessProgram
    def show_welcome_message
       puts "welcome to our Busy Mums and professional program"
    end

    def suggested_plan(bmi)
        suggested_plan = ""
        if (bmi >= 25)
            suggested_plan = "1.Extensive online video exercise\n 2.less carbohydrate based diet, small quantity plan to follow\n 3.You have acces to our gym during Friday evening or all day during weekend"
        elsif (19 < bmi and bmi < 25 )
            suggested_plan = "1.moderate online video exercise\n 2.mix of carbohydrate and protein based diet plan to follow\n 3.You have access to our gym during Friday evening or all day during weekend"
        else
            suggested_plan = "1.Easy online video exercise\n  2.High protein based diet,mutiple time diet plan to follow\n 3.You have access to our gym during Friday evening or all day during weekend"
        end
    end
end

