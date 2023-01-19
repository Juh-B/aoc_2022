require 'set'

class Day06
  file = File.read('./Day06/input.txt')

  # Part 01
  result01 = file
    .chomp
    .chars
    .each_cons(4)
    .map(&:to_set)
    .find_index { |set| set.size == 4 } + 4

  puts "Part 01 -> It needs #{result01} characters"

  # Part 02
  result02 = file
    .chomp
    .chars
    .each_cons(14)
    .map(&:to_set)
    .find_index { |set| set.size == 14 } + 14

  puts "Part 02 -> It needs #{result02} characters"
end
