require "test/unit"
require_relative "../busy_bee"

class FitnessProgramTest < Test::Unit::TestCase
    def test_welcome_message
        fitness_program = BusyBee.new
        assert_equal("welcome to our Busy Mums and professional program",fitness_program.show_welcome_message)
    end
end