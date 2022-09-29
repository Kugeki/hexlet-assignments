# frozen_string_literal: true

# BEGIN
def reverse(str)
  res = ''
  str.each_char.reverse_each { res += _1 }
  res
end
# END
