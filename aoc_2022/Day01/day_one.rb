class Day01
  # Add 0 at the end of the files
  file = File.readlines('./Day01/input.txt')

  elves = []
  elf_cals = 0

  file.each do |line|
    result = line.to_i
    result != 0 ? elf_cals += result : elves << elf_cals && elf_cals = 0
  end
  
  puts "Part 01 -> The Elf with most cals has #{elves.max} calories."
  puts '------------'
  puts "Part 02 -> The elves are carrying #{elves.max(3).sum} calories."
end
