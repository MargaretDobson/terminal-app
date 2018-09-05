require "test/unit"
require_relative "../old_is_gold"

class FitnessProgramTest < Test::Unit::TestCase
    def test_welcome_message
        fitness_program =OldIsGold.new("Tom",60,78,172)
        assert_equal("Thank You for your patronage",fitness_program.attendance_app(2))
    end
end