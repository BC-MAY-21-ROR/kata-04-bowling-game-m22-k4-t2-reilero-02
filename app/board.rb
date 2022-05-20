# frozen_string_literal: true

require_relative 'frame'

class Board
  attr_reader :board

  def initialize
    @board = Array.new(10)
  end

  def fill_board
    i = 0
    @board.each do |_x|
      @board[i] = Frame.new
      i = 1 + i
    end
  end

  def next_frame(frame)
    index = board.find_index(frame)
    board[index + 1]
  end

  def previous_frame(frame)
    index = board.find_index(frame)
    board[index - 1]
  end
end
