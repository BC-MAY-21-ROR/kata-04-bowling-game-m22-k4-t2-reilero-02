class Frame 
def initialize
    @frame
end
def set_frame
    @frame = Array.new(10)
end
# crea un array nuevo con los bolos faltantes
def sorted_frame(remaining_pins)
    second_frame = Array.new(remaining_pins)
    @frame = second_frame
end

end