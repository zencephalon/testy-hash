require "colored"
load "testy.rb"

class SimpleHash
  attr_accessor :size

  def initialize(size)
    @size = size
    @store = Array.new(size, [])
  end

  def [](key)
    store_key = key % @size
    if @store[store_key].empty?
      return nil
    else
      find_key(key, @store[store_key])
    end
  end

  def []=(key, value)
    @store[store_key] << [key, value]
  end
end

hash = SimpleHash.new(50)
assert_equal(nil, hash[5])
