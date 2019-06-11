# frozen_string_literal: true

def fib(n)
  arr = [0, 1]
  i = 2
  while i < n
    arr.push(arr[-2] + arr[-1])
    i += 1
  end
  arr
end

p fib(100)
