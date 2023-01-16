require 'set'

class Day04
  file = File.readlines('./Day04/input.txt')

  array = []
  file.each { |l| l.chomp.split(/[,-]/).each { |c| array << c.to_i if c.ord > 47 } }

  p array
    .each_slice(2).to_a
    .map { |a, b| (a..b).to_set }
    .each_slice(2).to_a
    .reduce(0) { |count, (a, b)| a.subset?(b) || b.subset?(a) ? count + 1 : count }
end
