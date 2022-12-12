class Day03
  file = File.readlines('./Day03/input.txt')
  rucksacks = file.map(&:chomp).map(&:chars)

  # Part 01
  total01 = 0

  rucksacks.each do |compartment|
    half = compartment.length/2
    rigth = compartment.first(half)
    left = compartment.last(half)

    itens = rigth.intersection(left)
    itens.each do |item|
      total01 += item =~ /[a-z]/ ? item.ord - 96 : item.ord - 38
    end
  end

  puts "Part 01 -> The sum of the priorities is #{total01}"

  # Part 02
  total02 = 0

  rucksacks
    .each_slice(3)
    .to_a
    .each do |rucksack|
      badges = rucksack[0].intersection(rucksack[1], rucksack[2])
      badges.each do |sticker|
        total02 += sticker =~ /[a-z]/ ? sticker.ord - 96 : sticker.ord - 38
      end
    end

  puts "Part 02 -> The sum of the priorities is #{total02}"
end
