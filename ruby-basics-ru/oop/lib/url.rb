# frozen_string_literal: true

# BEGIN
require 'uri'
require 'forwardable'

class Url
  attr_reader :uri

  def initialize(href)
    @uri = URI(href)

    query = uri.query
    @params = {} if query.nil?

    @params ||= query.split('&').map { |q| q.split('=') }.to_h
      .transform_keys(&:to_sym)
  end

  extend Forwardable
  def_delegator :@uri, :scheme
  def_delegator :@uri, :host

  def query_params
    @params
  end

  def query_param(key, default = nil)
    @params.fetch(key, default)
  end

  include Comparable
  def ==(other)
    uri == other.uri
  end
end
# END
