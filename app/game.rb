require_relative "board"
require_relative "frame"

class Game
    def initialize
        @shot
    end

    def shot(frame)
        @knock_out_pins = rand(0..frame.remaining_pins)
        if @knock_out_pins == 10
            final_score
        else
            shot
        end
    end

    def past_shot(frame)
        @index = board.find_index(frame)
        @board[index - 1]
    end

    def final_score
        @score = 0
    end

end