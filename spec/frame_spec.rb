require 'rspec'
require_relative '../app/frame'

describe Frame do
    subject { Frame.new } 
    describe "pins_dropped" do
      it "should substract from remaining_pins" do
        subject.pins_dropped(8)
        expect(subject.remaining_pins).to eql(2)
      end
      it "should return the amount of pins substracted" do
        expect(subject.pins_dropped(8)).to eql(8)
      end

    end
end