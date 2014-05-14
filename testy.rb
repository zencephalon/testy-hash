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