require_relative "./board"
require_relative "./frame"

class Game
    def initialize
        @shot
        @score
    end

    def play_frame(frame)
        @frame_score = 0
        @frame_score += frame.pins_dropped(rand(0..frame.remaining_pins))
        puts  @frame_score
        if frame.remaining_pins==0
            puts "strike"
            return @frame_score 
        end
        @frame_score += frame.pins_dropped(rand(0..frame.remaining_pins))
        puts  @frame_score
        if frame.remaining_pins==0
            puts "spare"
        end
        @frame_score
        puts @frame_score
    end


    def play(board)
        board.each do |x|
            i = 0
            play_frame(board[i])
            i++
        end
    end

    # board.each do |x|
    #     i = 0  
    #     play_frame(board[i])
    #     i++
    #     end


    def past_shot(frame)
        @index = board.find_index(frame)
        @board[index - 1]
    end

end


board1 = Board.new
board1.fill_board
game1 = Game.new
frame = board1.board[0]
Game.new.play(board1.board)