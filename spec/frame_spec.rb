# frozen_string_literal: true

require 'rspec'
require_relative '../app/frame'

describe Frame do
  subject(:frame) { Frame.new }
  describe 'pins_dropped' do
    it 'should substract from remaining_pins' do
      frame.pins_dropped(8)
      expect(frame.remaining_pins).to eql(2)
    end
    it 'should return the amount of pins substracted' do
      expect(frame.pins_dropped(8)).to eql(8)
    end
  end
  describe '#strike?' do
    it 'should return true if its a strike' do
      frame.play_frame(10, 0)
      expect(frame.strike?).to eq(true)
    end
  end
  describe '#spare?' do
    it 'should return true if its a spare' do
      frame.play_frame(9, 1)
      expect(frame.spare?).to eq(true)
    end
  end
  describe '#type_of_frame' do
    it 'should return strike, spare or normal' do
      expect(frame.type_of_frame).to eq('spare').or(eq('strike')).or(eq('normal'))
    end
  end
end
