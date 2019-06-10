a = [3, 34, 302, 50, 31]
b = [50, 2, 1, 9]

# version 0, not good enough

# def big(arr)
#   arr.map!{ |el| el.to_s }.sort.reverse.join.to_i
# end

# version 1, better
def big(arr)
  # map to strings and reverse sort
  groups = arr.map{ |el| el.to_s }.
  sort.reverse.
  # group by first digit
  group_by{ |el| el[0]}.values
  if groups.all?{ |c| c.count == 1 }
    # if only one value per first digit we're good to go
    groups.join.to_i
  else
    # sort on the second digit (or first for simple numbers)
    # "3" is sorted correctly in example a
    groups.map!{ |s| s.sort_by{ |dig| dig[-(dig.length - 1)] }.reverse }
    groups.join.to_i
  end
end

p big(a)
p big(b)
