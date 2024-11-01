alfabet = ("a".."z").to_a

def is_upcase?(char)
  char == char.upcase
end

def find_positions_down(char, number_of_positions_down, alfabet)

  char.downcase!

  return if !alfabet.index(char) # returns if there is no char in the alphabet

  char_old_index = alfabet.index(char)

  char_new_index_down = char_old_index + number_of_positions_down

  if(char_new_index_down > alfabet.size)
    char_new_index_down = char_new_index_down - alfabet.size
  else
    char_new_index_down
  end

  return char_new_index_down
end

def caesar_cipher(string, number_of_positions_down, alfabet)
  # array_of_chars = string.chars
  new_string = Array.new

  string.each_char do |char|
    new_char_index = find_positions_down(char, number_of_positions_down, alfabet)

    if new_char_index # if new_char_index is no nil
      # new_char = is_upcase?(char) ? alfabet[new_char_index].upcase : alfabet[new_char_index]
      new_char = alfabet[new_char_index]
      new_string.push(new_char)
    else
      new_string.push(char)
    end
  end

  new_string.join
end

puts caesar_cipher("What a string!", 5, alfabet)
