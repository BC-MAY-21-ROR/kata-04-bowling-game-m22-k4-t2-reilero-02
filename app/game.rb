require_relative "./board"
require_relative "./frame"

class Game
    def initialize
        @shot
    end

    def play_frame(frame)
        frame_score = 0
        puts frame.pins_dropped(rand(0..frame.remaining_pins))
        if frame.remaining_pins==0
            puts "strike"
            return 
        end
        puts frame.pins_dropped(rand(0..frame.remaining_pins))
        if frame.remaining_pins==0
            puts "spare"
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

board1 = Board.new
board1.fill_board
game1 = Game.new
frame = board1.board[0]
game1.play_frame(frame)