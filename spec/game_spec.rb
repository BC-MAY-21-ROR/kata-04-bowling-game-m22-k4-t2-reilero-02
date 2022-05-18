require "rspec"
require_relative "../app/game"

describe Game do
    subject(:board) { Board.new }
    subject(:game)  { Game.new }

    describe "#play_frame" do
        it "play frame should drop random the pins" do
            board.fill_board
            frame = board.board[0]
            expect(game.play_frame(frame)).to be_between(0,10)
        end
    end

    describe "#play" do
        it "play frame give you a final score" do

        end
    end    

end