require 'rspec'
require_relative '../app/frame'

describe Frame do
    describe "pins_dropped" do
      it "should substract from remaining_pins" do
        frame = Frame.new
        frame.pins_dropped(8)
        expect(frame.remaining_pins).to eql(2)
      end
      it "should return the amount of pins substracted" do
        expect(Frame.new.pins_dropped(8)).to eql(8)
      end

    end
end