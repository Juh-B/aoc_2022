class Day05
  file = File.readlines('./Day05/input.txt')

  towers = []
  file.each do |l|
    # Read and identify each tower
    l.chomp
     .split(/\s{4}| /)
     .each_with_index do |element, i|
      next if element == ''

      if element.include?('[')
        towers[i] = [] if towers[i].nil?
        towers[i] << element.gsub(/\[|\]/, '')
      end
    end

    # Read and identify each moviment
    if l.include?('move')
      el = l.split(' ')[1].to_i
      from = l.split(' ')[3].to_i - 1
      to = l.split(' ')[5].to_i - 1

      el.times do
        towers[to].insert(0, towers[from].shift)
      end
    end
  end

  # Identify the top element of each tower
  top = []
  towers.each do |tower|
    top << tower.first
  end

  puts "The crates that end up on top of each stack are #{top.join} "

  p top.join
end
