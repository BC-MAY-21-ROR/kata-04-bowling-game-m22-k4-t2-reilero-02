# frozen_string_literal: true

class Frame
  attr_reader :remaining_pins, :is_strike, :is_spare, :first_roll, :second_roll

  def initialize
    @remaining_pins = 10
    @frame_score = 0
    @is_strike = false
    @is_spare = false
    @first_roll = 0
    @second_roll = 0
  end

  def pins_dropped(pins)
    @remaining_pins = remaining_pins - pins
    pins
  end

  def strike?
    @is_strike
  end

  def spare?
    @is_spare
  end

  def strike!
    puts 'strike'
    @is_strike = true
  end

  def spare!
    puts 'spare'
    @is_spare = true
  end

  def shoot(number)
    pins_dropped(number)
  end

  def play_frame(number, number2)
    puts 'a frame was played'

    @first_roll += shoot(number)
    if @remaining_pins.zero?
      strike!
      return @frame_score
    end
    @second_roll += shoot(number2)
    spare! if @remaining_pins.zero?
    @frame_score = @first_roll + @second_roll
  end

  def type_of_frame
    'strike' if @is_strike
    'spare' if @is_spare
    'normal'
  end
end
