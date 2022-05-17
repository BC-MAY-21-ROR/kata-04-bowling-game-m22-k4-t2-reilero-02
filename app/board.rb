require_relative "frame"

class Board 
    def initialize
        @board = Array.new(10)
    end

    def fill_board
        @board.fill(Frame.new.set_frame) 
    end

end