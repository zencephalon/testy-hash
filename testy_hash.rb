require "colored"
load "testy.rb"

class SimpleHash
  attr_accessor :size

  def initialize(size)
    @size = size
    @store = Array.new(5, [])
  end

  def [](key)
    5
  end

  def []=(key, value)
    puts 5
    5
  end
end

hash = SimpleHash.new(50)
assert_equal(5, hash[5])
assert_equal(5, hash[3] = 7)
assert_equal(5, hash.[]=(3, 7))