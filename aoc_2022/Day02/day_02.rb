class Day02
  file = File.readlines('./Day02/input.txt')

  # scissor > paper > rock > scissor
  # A rock = 1 | B paper = 2 | C scissor = 3
  # X rock = 1 | Y paper = 2 | Z scissor = 3
  # outcome -> lost 0, draw 3, won 6

  # part 02 -> x lose = 0 | Y draw = 3 | Z win = 6

  score_part01 = 0
  score_part02 = 0

  # first_col = my asnwer (X, Y, Z) | sec_col = outcome
  game_part01 = {
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

  # first_col = my asnwer | sec_col = outcome (X, Y,  Z)
  game_part02 = {
    'A X': 3 + 0,
    'A Y': 1 + 3,
    'A Z': 2 + 6,

    'B X': 1 + 0,
    'B Y': 2 + 3,
    'B Z': 3 + 6,

    'C X': 2 + 0,
    'C Y': 3 + 3,
    'C Z': 1 + 6
  }

  file.each do |line|
    score_part01 += game_part01[:"#{line.chomp}"]
    score_part02 += game_part02[:"#{line.chomp}"]
  end

  puts "result Part 01 - #{score_part01}"
  puts "----------------------"
  puts "result Part 02 - #{score_part02}"
end
