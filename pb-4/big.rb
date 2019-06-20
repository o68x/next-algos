# frozen_string_literal: true

lista = [3, 34, 302, 50, 31, 301, 30]
listb = [50, 2, 1, 9]

# version 0, not good enough

# def big(arr)
#   arr.map!{ |el| el.to_s }.sort.reverse.join.to_i
# end

# version 1, better
def big(arr)
  # map to strings and reverse sort
  # group by first digit
  grouped = arr.map(&:to_s)
               .sort.reverse
               .group_by { |el| el[0] }
               .values
  unless grouped.all? { |c| c.count == 1 }
    # if only one value per first digit we're good to go, else
    # sort on the second digit (or first for simple numbers)
    # ("3" is sorted correctly in example a)
    grouped.map! { |s| s.sort_by { |dig| dig[-(dig.length - 1)] }.reverse }
  end
  grouped.join.to_i
end

p big(lista)
p big(listb)
