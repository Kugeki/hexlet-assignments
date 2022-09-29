# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params)
  params.sort.each_with_object([]) do |(k, v), arr| 
    arr << "#{k}=#{v}&"
  end.join.chop
end
# END
# rubocop:enable Style/For
