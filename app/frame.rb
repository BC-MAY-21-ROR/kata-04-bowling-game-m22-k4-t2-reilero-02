class Frame 
    attr_reader :remaining_pins
  def initialize
    @remaining_pins = 10
  end
    
  def pins_dropped(pins)
    @remaining_pins = remaining_pins - pins
    pins
  end
end