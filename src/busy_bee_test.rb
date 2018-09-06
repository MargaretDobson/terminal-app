require "test/unit"
require_relative "../busy_bee"

class FitnessProgramTest < Test::Unit::TestCase
    def test_suggested_plan
        fitness_program = BusyBee.new("shubha",23,76,167)
        assert_equal("1.Extensive online video exercise\n 2.less carbohydrate based diet, small quantity plan to follow\n 3.You have acces to our gym during Friday evening or all day during weekend",fitness_program.suggested_plan(27))
    end
end