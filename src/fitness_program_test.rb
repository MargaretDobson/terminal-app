require "test/unit"
require_relative "../fitness_program"
require_relative "../busy_bee"

class FitnessProgramTest < Test::Unit::TestCase
    def test_bmi_calculator
        fitness_program = BusyBee.new("shubha",23,76,167)
        assert_equal(27,body_mass_index(76,167).to_i)
    end
end