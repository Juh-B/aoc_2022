class Day04
  file = File.readlines('./Day04/sample.txt')
  sections = file.map(&:chomp)

  print sections
end
