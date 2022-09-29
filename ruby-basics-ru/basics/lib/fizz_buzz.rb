# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return nil if start > stop

  res = ''
  (start..stop).each do |i|
    res += if (i % 15).zero?
             'FizzBuzz '
           elsif (i % 3).zero?
             'Fizz '
           elsif (i % 5).zero?
             'Buzz '
           else
             "#{i} "
           end
  end
  res.chop
end
# END
