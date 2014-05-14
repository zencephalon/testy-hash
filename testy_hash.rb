require "colored"

def assert(bool)
  if bool
    puts "Test passed!".green
  else
    puts "Failed! Expected true.".red
  end
end

assert(25 == 5 * 5)
assert(25 == "5" * 5)