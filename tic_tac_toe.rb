class Gameplay
  def self.interface
    @a = 1
    @b = 2
    @c = 3
    @d = 4
    @e = 5
    @f = 6
    @g = 7
    @h = 8
    @i = 9
    board = " #{@a} | #{@b} | #{@c}\n" \
              "---+---+---\n" \
              " #{@d} | #{@e} | #{@f}\n" \
              "---+---+---\n" \
              " #{@g} | #{@h} | #{@i}"
    puts board
  end
end

module Outcome

  ONE = a == "x" && b == "x" && c == "x"
  TWO = d == "x" && e == "x" && f == "x"
  THREE = g == "x" && h == "x" && i == "x"
  FOUR = a == "x" && e == "x" && i == "x"
  FIVE = c == "x" && e == "x" && g == "x"

  SIX = a == "o" && b == "o" && c == "o"
  SEVEN = d == "o" && e == "o" && f == "o"
  EIGHT = g == "o" && h == "o" && i == "o"
  NINE = a == "o" && e == "o" && i == "o"
  TEN = c == "o" && e == "o" && g == "o"

  player_one_wins = [ONE, TWO, THREE, FOUR, FIVE]

  player_two_wins = [SIX, SEVEN, EIGHT, NINE, TEN]

end