def reverser
  words = yield
  reversed = words.split.map { |word| word.reverse }
  reversed.join(' ')
end

def adder(val=1)
  num = yield
  num + val
end

def repeater(count=1)
  count.times { yield }
end
