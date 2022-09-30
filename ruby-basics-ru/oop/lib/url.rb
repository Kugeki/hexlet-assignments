# frozen_string_literal: true

# BEGIN
require 'uri'
require 'forwardable'

class Url
  attr_reader :uri

  def initialize(href)
    @uri = URI(href)
  end

  extend Forwardable
  def_delegator :@uri, :scheme
  def_delegator :@uri, :host

  def query_params
    params_str = uri.query
    return {} if params_str.nil?

    params_str.split('&').map { |q| q.split('=') }.to_h.transform_keys(&:to_sym)
  end

  def query_param(key, default = nil)
    params = query_params
    params.fetch(key, default)
  end

  include Comparable
  def ==(other)
    uri == other.uri
  end
end
# END
