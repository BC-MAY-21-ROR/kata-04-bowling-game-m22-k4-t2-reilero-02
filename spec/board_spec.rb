require "rspec"
require_relative "../app/board"

describe Board do
    describe"#fill_board" do 
        it "Fill board should fill the board with true values" do

            expect(Board.new.fill_board.all?(true)).to eq true
        end
    end
end