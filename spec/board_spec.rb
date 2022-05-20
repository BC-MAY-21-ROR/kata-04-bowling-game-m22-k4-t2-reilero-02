# frozen_string_literal: true

require 'rspec'
require_relative '../app/board'

describe Board do
  subject(:board) { Board.new }
  describe '#fill_board' do
    it 'Fill board should fill the board with true values' do
      expect(board.fill_board.all?(true)).to eq true
    end
  end
  describe '#previous_frame' do
    it 'should return the previous frame, or false if there is none' do
      board.fill_board
      expect(board.previous_frame(board.board[5])).to eq(board.board[4])
    end
  end
  describe '#next_frame' do
    it 'should return the next frame, or false if there is none' do
      board.fill_board
      expect(board.next_frame(board.board[5])).to eq(board.board[6])
    end
  end
end
