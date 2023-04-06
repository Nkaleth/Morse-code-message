def decode_char(char)
  morse_code = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e',
    '..-.' => 'f', '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j',
    '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o',
    '.--.' => 'p', '--.-' => 'q', '.-.' => 'r',
    '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w',
    '-..-' => 'x', '-.--' => 'y', '--..' => 'z'
  }

  morse_code[char]&.upcase
end

def decode_word(word)
  arr_letters = word.split

  result = ''
  arr_letters.each { |letter| result += decode_char(letter) }
  result
end

def decode(sentence)
  arr_words = sentence.split('   ')

  result = ''
  arr_words.each { |word| result += "#{decode_word(word)} " }
  result
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
