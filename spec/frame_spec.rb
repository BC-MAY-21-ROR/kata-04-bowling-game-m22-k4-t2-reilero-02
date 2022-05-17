require 'rspec'
require_relative '../app/frame'

describe Frame do
    
    describe "set_frame" do
      it "should set the 10 pins in the frame" do
        expect(Frame.new.set_frame.length).to eq(10)
    end
    describe "sorted_frame" do
      sorted_frame = Frame.new.sorted_frame(6)
      it "should create a new array after the game method" do
        expect(sorted_frame.length).to eq(6)
      end
    end
    end
end