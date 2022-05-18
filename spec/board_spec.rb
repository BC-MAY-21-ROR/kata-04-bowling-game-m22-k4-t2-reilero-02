require "rspec"
require_relative "../app/board"

describe Board do
    subject { Board.new }
    describe"#fill_board" do 
        it "Fill board should fill the board with true values" do

            expect(subject.fill_board.all?(true)).to eq true
        end
    end
end