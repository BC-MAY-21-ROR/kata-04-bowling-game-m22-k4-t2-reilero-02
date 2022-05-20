require_relative './board'
require_relative './frame'

class Game
  
  def initialize
    @shot
    @score = 0
  end
  def create_random_shots
    first_roll = rand(0..10)
    puts first_roll
    second_roll = rand(0..10-first_roll)
    puts second_roll
    shots = [first_roll, second_roll]
  end
  def play(board)
    array = board.board
    i = 0
    array.each do |x|
      shots = create_random_shots
      @score += x.play_frame(shots[0],shots[1])
      i = i + 1
    end
    @score
  end
  def calculate_final_score(board)
    final_score = 0
    final_board = board.board
    final_board.each do |x|
      if x.next_frame.spare?
        x.score += x.next_frame.first_roll
        final_score += x.score
      elsif x.next_frame.strike?
        x.score += x.next_frame.frame_score
        final_score += x.score
      end
    end
  end

end


board1 = Board.new
board1.fill_board
game1 = Game.new
frame = board1.board[0]

puts game1.play(board1)
puts game1.calculate_final_score(board1)

