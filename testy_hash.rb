require "colored"

def assert(bool)
  if bool
    puts "Test passed!".green
  else
    puts "Failed! Expected true".red
  end
end

def assert_equal(expected, test)
  if expected == test
    puts "Test passed!".green
  else
    if expected.nil?
      expected = 'nil'
    end

    puts "Failed! Expected #{expected} but got #{test}".red
  end
end

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