# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  text.split.map do |word|
    if stop_words.include? word
      '$#%!'
    else
      word
    end
  end.join ' '
  # END
end

# rubocop:enable Style/For
