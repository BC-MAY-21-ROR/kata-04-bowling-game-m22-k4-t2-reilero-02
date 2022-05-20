# frozen_string_literal: true

require 'rspec'
require_relative '../app/game'
require_relative '../app/board'
require_relative '../app/frame'

describe Game do
  subject(:board) { Board.new }
  subject(:game)  { Game.new }

  describe '#play_frame' do
    it 'play frame should drop random the pins' do
      board.fill_board
      frame = board.board[0]
      expect(game.play_frame(frame)).to be_between(0, 10)
    end
  end

  describe '#play' do
    it 'play frame give you a final score' do
      board.fill_board
      expect(game.play(board)).to be_between(0, 99)
    end
  end
  describe '#calculate_final_score' do
    it 'should give you a final score following the bowling rules' do
      board.fill_board
      expect(board.calculate_final_score).to be_between(0, 300)
    end
  end
  describe '#previous_frame' do
    it 'should return the previous frame, or false if there is none' do
      board.fill_board
      expect(board.board[1].previous_frame).to eq(board.board[0])
    end
  end
  describe '#next_frame' do
    it 'should return the next frame, or false if there is none' do
      board.fill_board
      expect(board.board[5].next_frame).to eq(board.board[6])
    end
  end
end
