require_relative "frame"

class Board 
    attr_reader :board
    def initialize
        @board = Array.new(10)
    end

    def fill_board
        @board.fill(Frame.new) 
    end

end