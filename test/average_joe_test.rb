require "test/unit"
require_relative "../average_joe"

class FitnessProgramTest < Test::Unit::TestCase
    def test_welcome_message
        fitness_program = .new
        assert_equal("welcome to our Fitness for everyone program\n please provide your Name,Age, Weight in kg. and Height in cm.",fitness_program.show_welcome_msg)
    end
end