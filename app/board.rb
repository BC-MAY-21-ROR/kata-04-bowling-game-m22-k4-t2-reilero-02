require_relative "frame"

class Board 
    def initialize
        @board = Frame.new.set_frame
    end

    def fill_board
        isSet = true
        @board.fill(isSet) 
    end

end