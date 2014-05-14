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
    puts "Failed! Expected #{expected} but got #{test}".red
  end
end

assert(25 == 5 * 5)
assert(25 == "5" * 5)
assert_equal(25, 5 * 5)
assert_equal(25, "5" * 5)
assert_equal(nil, [1, 2][1])