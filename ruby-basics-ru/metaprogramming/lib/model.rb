# frozen_string_literal: true

# BEGIN
require 'date'

def convert_to_type(value, type)
  case type
  when :datetime
    DateTime.parse(value)
  when :string
    value.to_s
  when :integer
    value.to_i
  when :float
    value.to_f
  when :array
    value.to_a
  when :hash
    value.to_h
  when :symbol
    value.to_sym
  else
    value
  end
end

# Model
module Model
  attr_reader :attributes

  def self.included(base)
    base.extend(ClassMethods)
  end

  def initialize(attributes = {})
    @attributes = {}
    attributes.each do |key, value|
      send "#{key}=", value
    end
  end

  # ClassMethods
  module ClassMethods
    def attribute(name, options = {})
      instance_variable_set name, convert_to_type(options[:default], options[:type]) if options[:default]

      define_method name do
        instance_variable_get "@#{name}"
      end

      define_method "#{name}=" do |value|
        value_set = convert_to_type(value, options[:type])
        @attributes[name] = value_set
        instance_variable_set "@#{name}", value_set
      end
    end
  end
end
# END
