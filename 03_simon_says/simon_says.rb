def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, count=2)
  message = ""
  count.times { message << "#{word} " }
  message.chomp(' ')
end

def start_of_word(word, count)
  word[0..count-1]
end

def first_word(message)
  message.scan(/\w+/).first
end

def titleize(words)
  results = ""
  little_words = %w{the over and}
  word_list = words.scan(/\w+/)

  results << word_list.first.capitalize + ' '
  word_list[1..-1].map do |w|
    if little_words.include?(w)
      results << w + ' '
    else
      results << w.capitalize + ' '
    end
  end
  results.chomp(' ')
end
