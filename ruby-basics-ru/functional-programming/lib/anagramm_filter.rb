# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, arr)
  arr.select do |s|
    ('a'..'z').all? { |c| s.count(c) == word.count(c) }
  end
end
# END
