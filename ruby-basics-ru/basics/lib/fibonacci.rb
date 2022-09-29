# frozen_string_literal: true

# BEGIN
# @param [Integer, nil] n
def fibonacci(n)
  return nil if n.negative?
  return 0 if n.zero?
  return 1 if n == 1
  return 1 if n == 2

  b = 1 # 1
  c = 1
  (2...n).each do
    t = b
    b = c
    c += t
  end
  c
end
# END
