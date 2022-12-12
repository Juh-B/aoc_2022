class Day03
  file = File.readlines('./Day03/sample.txt')

  rucksack = file.map(&:chomp).map(&:chars)
  total = 0

  rucksack.each do |compartment|
    half = compartment.length/2
    rigth = compartment.first(half)
    left = compartment.last(half)

    itens = rigth.intersection(left)
    itens.each do |item|
      total += item =~ /[a-z]/ ? item.ord - 96 : item.ord - 38
    end
  end

  puts "The sum of the priorities is #{total}"
end
