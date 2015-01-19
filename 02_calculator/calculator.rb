require 'byebug'

def add (first_num, second_num)
  first_num + second_num
end

def subtract (first_num, second_num)
  first_num - second_num
end

def sum(number_list)
  total = 0
  number_list.each { |number| total += number }
  total
end

def multiply(*args)
  total = args.first
  args.each { |number| total *= number }
  total
end

puts Float::NAN

def power(base, exp)
  total = base
  case
  when exp < 0
    exp = (exp.abs) - 1
    exp.times { total *= base }
    total = (1.0 / total)
  when exp == 0
    1
  when exp == 1
    base
  when exp > 1
    exp -= 1
    exp.times { total *= base }
    total
  end
end

def factorial(num)
  case
  when num < 0
    Float::NAN
  when num == 0 || num == 1
    1
  else
    (1..num).inject {|product, n| product * n }
  end
end

