require 'set'

class Day04
  file = File.readlines('./Day04/input.txt')

  array = []
  file.each { |l| l.chomp.split(/[,-]/).each { |c| array << c.to_i if c.ord > 47 } }

  # Part 01
  part01 = array
    .each_slice(2).to_a
    .map { |a, b| (a..b).to_set }
    .each_slice(2).to_a
    .reduce(0) { |count, (a, b)| a.subset?(b) || b.subset?(a) ? count + 1 : count }

  puts "Part 01 -> One range fully contain the other in #{part01} assignment pairs "

  # Part 02
  part02 = array
    .each_slice(2).to_a
    .map { |a, b| (a..b).to_set }
    .each_slice(2).to_a
    .reduce(0) { |count, (a, b)| a.intersect?(b) ? count + 1 : count }

  puts "Part 02 -> The ranges overlap in #{part02} assignment pairs "
end
