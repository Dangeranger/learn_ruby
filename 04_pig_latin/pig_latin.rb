def translate(words)
  translated = ""
  word_list = words.scan(/\w+/)
  word_list.map { |w| translated << translate_word(w) + ' ' }
  translated.chomp(' ')
end

def translate_word(word)
  suffix = 'ay'
  case
  when vowel_start?(word)
    word += suffix
  when consonant_start?(word)
    start = starting_consonants(word)
    word = word.sub(start, '') + start + suffix
  else
  end
  word
end

def vowel_start?(word)
  word =~ /\A[aeiou]/i
end

def consonant_start?(word)
  word =~ /\A[^aeiou]/i
end

def qu_start?(word)
  word =~ /\A[qu]/i
end

def starting_consonants(word)
  letters = ""
  word.each_char do |c|
    if consonant_start?(c) or qu_start?(c)
      letters << c
    else
      break
    end
  end
  letters
end
