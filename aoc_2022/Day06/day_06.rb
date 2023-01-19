require 'set'

class Day06
  file = File.read('./Day06/sample.txt')

  # Part 01
  result01 = file
    .chomp
    .chars
    .each_cons(4)
    .map(&:to_set)
    .find_index { |set| set.size == 4 } + 4

    puts "Part 01 -> It needs #{result01} characters"

    
end
