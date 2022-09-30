# frozen_string_literal: true

# BEGIN
require 'time'
def count_by_years(users)
  users.each_with_object({}) do |user, res|
    next if user[:gender] != 'male'

    year = Time.parse(user[:birthday]).year.to_s
    res[year] ||= 0
    res[year] += 1
  end
end
# END
