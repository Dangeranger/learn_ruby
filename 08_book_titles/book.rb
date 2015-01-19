class Book

  def title=(title)
    words = title.split
    words = words.map { |w| titleize(w) }.join(' ')
    words[0] = words[0].capitalize
    @title = words
  end

  def titleize(word)
    lower = %w{ and an the a of in }
    lower.include?(word) ? word : word.capitalize
  end

  def title
    @title
  end
end
