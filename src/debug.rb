# Debug class is used to print debug messages throughout the program
class Debugger
    def initialize(debug)
        @debug = debug
    end
    def log_message(msg)
        puts msg if @debug == true
    end
end
