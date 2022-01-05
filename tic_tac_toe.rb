class Player

  def initialize
    puts "Hello! Please enter the name of the player:"
    player = gets
    puts "Please type 'x' or 'o' to choose one:"
    mark = gets
  end

  def move
    puts "#{player}, please input the number of the spot you would like to mark:"
    choice = gets
  end

end

class Board

  board_status = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9}

  def initialize
    # how??
  end

  def print_board
    board = " #{board_status[:a]} | #{board_status[:b]} | #{board_status[:c]}\n" \
                "---+---+---\n" \
                " #{board_status[:d]} | #{board_status[:e]} | #{board_status[:f]}\n" \
                "---+---+---\n" \
                " #{board_status[:g]} | #{board_status[:h]} | #{board_status[:i]}"
  end

  def new_move

  end

  def check_game_status
    # ??? recode or use old method?
  end

end

player_one = Player.new
player_two = Player.new

class Gameplay

  times_run = 0
  board_status = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9}

  def initialize
    puts "Hello! Please enter the name of player one:"
    player_one = gets
    puts "Please enter the name of player two:"
    player_two = gets
    current_player = player_one
  end

  def interface(board_status)
    board = " #{board_status[:a]} | #{board_status[:b]} | #{board_status[:c]}\n" \
              "---+---+---\n" \
              " #{board_status[:d]} | #{board_status[:e]} | #{board_status[:f]}\n" \
              "---+---+---\n" \
              " #{board_status[:g]} | #{board_status[:h]} | #{board_status[:i]}"
    puts board
  end

  def play_round(player_one, player_two, current_player, board_status)
    if current_player == player_one
      puts "#{player_one}, please input the number of the spot you would like to mark."
      selection = gets
      board_status.each {|key, value| value == selection ? value == "x" : value == selection }
      current_player = player_one
    else
      puts "#{player_two}, please input the number of the spot you would like to mark."
      board_status.each {|key, value| value == selection ? value == "o" : value == selection }
      current_player = player_two
    end

    times_run = times_run + 1
  end

  one = board_status[:a] == "x" && board_status[:b] == "x" && board_status[:c] == "x"
  two = board_status[:d] == "x" && board_status[:e] == "x" && board_status[:f] == "x"
  three = board_status[:g] == "x" && board_status[:h] == "x" && board_status[:i] == "x"
  four = board_status[:a] == "x" && board_status[:e] == "x" && board_status[:i] == "x"
  five = board_status[:c] == "x" && board_status[:e] == "x" && board_status[:g] == "x"

  six = board_status[:a] == "o" && board_status[:b] == "o" && board_status[:c] == "o"
  seven = board_status[:d] == "o" && board_status[:e] == "o" && board_status[:f] == "o"
  eight = board_status[:g] == "o" && board_status[:h] == "o" && board_status[:i] == "o"
  nine = board_status[:a] == "o" && board_status[:e] == "o" && board_status[:i] == "o"
  ten = board_status[:c] == "o" && board_status[:e] == "o" && board_status[:g] == "o"

  eleven = board_status[:a] == 1
  twelve = board_status[:b] == 2
  thirteen = board_status[:c] == 3
  fourteen = board_status[:d] == 4
  fifteen = board_status[:e] = 5
  sixteen = board_status[:f] == 6
  seventeen = board_status[:g] == 7
  eighteen = board_status[:h] == 8
  nineteen = board_status[:i] == 9

  def check_game_status
    if times_run < 5
    elsif one || two || three || four || five
      puts "#{player_one} wins! New game?"
    elsif six || seven || eight || nine || ten
      puts "#{player_two} wins! New game?"
      # you know the drill
    elsif eleven || twelve || thirteen || fourteen || fifteen || sixteen || seventeen || eighteen || nineteen
      # continue with the game
    else
      puts "It's a tie! New game?"
    end
  end

end

# initialize gameplay.
# play a round.
# print the board.
# after every round, check to see if anyone has won or if all the spaces have been filled.
# play a round if not.
# print the board.
# once someone wins or ties, ask if they want to play again.
# clear all variables.