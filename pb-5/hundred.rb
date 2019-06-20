# 1 2 3 4 5 6 7 8 9
#
# each pair has 4 possibilities -1, 1, sum, join
# ex: [2, 3] gives [-5, -1, 1, 5, 23]... and so on

# we have 8 operations:
#
# 1, 2 -> +- 1  3  12
# 2, 3 -> +-    5  23
# 3, 4 -> +-    7  34
# 4, 5 -> +-    9  45
# 5, 6 -> +-   11  56
# 6, 7 -> +-   13  67
# 7, 8 -> +-   15  78
# 8, 9 -> +-   17  89
#
# so we have 8 sums of those arrays
# (but cannot have 12 + 23, so it will not work that way)

# The sum of all is 45 so we have to have joins to get to 100, start with that

@num = *(1..9)
@glued = [12, 23, 34, 45, 56, 67, 78, 89]
p @num, @glued
def remove_num(glued)
  u = glued.to_s[1].to_i
  t = glued.to_s[0].to_i
  @num = @num - [t, u]
end

def remove_glued(glued)
  @glued.delete_at(@glued.index(glued)-1)
  @glued.delete_at(@glued.index(glued)+1)
end

def build_start(glued)
  remove_num(glued)
  remove_glued(glued)
  @start = @num + @glued
end

build_start(56)
p @num, @glued, @start

