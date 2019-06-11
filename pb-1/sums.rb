# frozen_string_literal: true

# fun with sums

list = *(1..100)

def sum_while(list)
  i = 0
  sum = 0
  while i < list.count
    sum += list[i]
    i += 1
  end
  sum
end

def sum_each(list)
  sum = 0
  list.each { |i| sum += i }
  sum
end

def sum_recursive(list)
  list += [list.slice!(0) + list.slice!(0)]
  return list[0] if list.count == 1

  sum_recursive(list)
end

puts "'Ruby' sum:      #{list.sum}"
puts "'While' sum:     #{sum_while(list)}"
puts "'Each' sum:      #{sum_each(list)}"
puts "'Recursive' sum: #{sum_recursive(list)}"
