alfabet = ("a".."z").to_a

def find_positions_down(char, number_of_positions_down, alfabet)

  return if !alfabet.index(char) # returns if there is no char in the alphabet

  char_old_index = alfabet.index(char)

  char_new_index_down = char_old_index + number_of_positions_down

  if(char_new_index_down > alfabet.size)
    char_new_index_down = char_new_index_down - alfabet.size
  else
    char_new_index_down
  end
end

def caesar_cipher(string, number_of_positions_down, alfabet)
  array_of_chars = string.downcase.chars
  new_string = Array.new

  array_of_chars.each do |char|
    new_char_index = find_positions_down(char, number_of_positions_down, alfabet)

    if new_char_index # if new_char_index is no nil
      new_string.push(alfabet[new_char_index])
    else
      new_string.push(char)
    end
  end

  new_string.join
end

puts caesar_cipher("What a string!", 5, alfabet)
