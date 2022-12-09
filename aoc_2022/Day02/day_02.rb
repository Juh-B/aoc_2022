class Day02
  file = File.readlines('./Day02/input.txt')

  # scissor > paper > rock > scissor
  # A rock = 1 | B paper = 2 | C scissor = 3
  # X rock = 1 | Y paper = 2 | Z scissor = 3
  # outcome -> lost 0, draw 3, won 6

  # part 02 -> x lose = 0 | Y draw = 3 | Z win = 6

  score = 0

  # first_col = my asnwer (X, Y, Z) | sec_col = outcome
  game = {
    'A X': 1 + 3,
    'A Y': 2 + 6,
    'A Z': 3 + 0,
    'B X': 1 + 0,
    'B Y': 2 + 3,
    'B Z': 3 + 6,
    'C X': 1 + 6,
    'C Y': 2 + 0,
    'C Z': 3 + 3
  }

  file.each do |line|
    score += game[:"#{line.chomp}"]
  end

  puts "result Part 01 - #{score}"
end
