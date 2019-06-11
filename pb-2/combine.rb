# frozen_string_literal: true

# combine elements of 2 arrays

a = %i[a b c d]
b = [1, 2, 3, 4]

# with contraint: same length of arrays

# def combine_zip(a, b)
#   a.zip(b).flatten! if a.length == b.length
# end

def combine_zip(a, b)
  if a.length < b.length
    # fill in if a shorter than b
    a += Array.new(b.length - a.length)
  end
  a.zip(b).flatten!
end

p combine_zip(a, b)
