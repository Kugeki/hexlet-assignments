# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_stack
    stack = Stack.new
    assert { stack.to_a == [] }
    assert { stack.empty? }
    assert { stack.size.zero? }

    stack.push! 'ruby'
    stack.push! 'php'
    stack.push! 'java'
    assert { stack.to_a == %w[ruby php java] }
    assert { stack.size == 3 }
    refute { stack.empty? }

    stack.pop!
    assert { stack.to_a == %w[ruby php]}
    assert { stack.size == 2 }

    stack.clear!
    assert { stack.to_a == [] }
    assert { stack.empty? }
    assert { stack.size.zero? }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
