class Gameplay
  # fix this variable later
  times_run = 0

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

  ELEVEN = a == 1
  TWELVE = b == 2
  THIRTEEN = c == 3
  FOURTEEN = d == 4
  FIFTEEN = e = 5
  SIXTEEN = f == 6
  SEVENTEEN = g == 7
  EIGHTEEN = h == 8
  NINETEEN = i == 9

  #player_one_wins = [ONE, TWO, THREE, FOUR, FIVE]

  #player_two_wins = [SIX, SEVEN, EIGHT, NINE, TEN]

end

def check_game_status
  if times_run < 5
    # continue with the game
  elsif ONE || TWO || THREE || FOUR || FIVE
    puts "#{player_one} wins! New game?"
    # reset everything, end program if they select no
  elsif SIX || SEVEN || EIGHT || NINE || TEN
    puts "#{player_two" wins! New game?"
    # you know the drill
  elsif ELEVEN || TWELVE || THIRTEEN || FOURTEEN || FIFTEEN || SIXTEEN || SEVENTEEN || EIGHTEEN || NINETEEN
    # continue with the game
  else
    puts "It's a tie! New game?"
  end
end