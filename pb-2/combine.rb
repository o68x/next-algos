# combine elements of 2 arrays

a = [:a, :b, :c, :d]
b = [1, 2, 3, 4]

# with contraint: same length of arrays

# def combine_zip(a, b)
#   a.zip(b).flatten! if a.length == b.length
# end

def combine_zip(a, b)
  if a.length == b.length
    a.zip(b).flatten!
  else
    raise "Arrays have different lengths"
  end
end

p combine_zip(a, b)

