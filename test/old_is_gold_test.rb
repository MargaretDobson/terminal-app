require "test/unit"
require_relative "../old_is_gold"

class FitnessProgramTest < Test::Unit::TestCase
    def test_welcome_message
        fitness_program =OldIsGold.new
        assert_equal("welcome to our Old is gold program for over 60age people\n please provide your Name, Age, Weightin Kg. and Height cm.",fitness_program.show_welcome_msg)
    end
end