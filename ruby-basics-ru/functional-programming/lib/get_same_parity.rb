# frozen_string_literal: true

# BEGIN
def get_same_parity(arr)
  return [] if arr == []

  if arr[0].even?
    arr.select(&:even?)
  else
    arr.select(&:odd?)
  end
end
# END
