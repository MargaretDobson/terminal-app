require "test/unit"
require_relative "../average_joe"

class FitnessProgramTest < Test::Unit::TestCase
    def test_welcome_message
        fitness_program =AverageJoe.new("Margaret",36,56,157)
        assert_equal("welcome to our Fitness for everyone program.",fitness_program.show_welcome_message)
    end
end