require "colored"
load "testy.rb"

class SimpleHash
  attr_accessor :size

  def initialize(size)
    @size = size
    @store = Array.new(size, [])
  end

  def find_key(key, arr)
    arr.each_with_index do |cell, index|
      return index if cell[0] == key
    end
    return nil
  end

  def [](key)
    store_key = key % @size
    if @store[store_key].empty?
      return nil
    else
      index = find_key(key, @store[store_key])
      if index
        return @store[store_key][index][1]
      else
        return nil
      end
    end
  end

  def []=(key, value)
    store_key = key % @size
    index = find_key(key, @store[store_key])
    if index
      @store[store_key][index][1] = value
    else
      @store[store_key] << [key, value]
    end
  end
end

hash = SimpleHash.new(50)
assert_equal(nil, hash[5])
hash[3] = 5
assert_equal(5, hash[3])
hash[3] = 7
assert_equal(7, hash[3])
