# fun with sums

list = *(1..10)

def sum_while(list)
  i = 0
  sum = 0
  while i < list.count do
    sum += list[i]
    i += 1
  end
  return sum
end

def sum_each(list)
  sum = 0
  list.each { |i| sum += i}
  return sum
end

def sum_recursive(list)
  list = [list.slice!(0) + list.slice!(0)] + list
  return list[0] if list.count == 1
  sum_recursive(list)
end

puts "'Ordinary' sum: #{list.sum}"
puts "'While' sum: #{sum_while(list)}"
puts "'Each' sum: #{sum_each(list)}"
puts "'Recursive' sum: #{sum_recursive(list)}"
