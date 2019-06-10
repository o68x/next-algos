def fib(n)
  arr = [0, 1]
  i = 2
  while i < n do
    arr.push(arr[-2] + arr[-1])
    i += 1
  end
  return arr
end

p fib(100)
