def ceasar_ciph(string, shift_factor)
    new_string = string
    string.each_char do |char|
        char.ord 
        new_string += char
    end
    new_string
end

puts ceasar_ciph("zula Smierdzi Groszkiem", 1)