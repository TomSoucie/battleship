require './lib/game'

class Battleship
  attr_reader   :start_time
  def initialize
    @start_time = Time.now
    welcome
  end

  def welcome
    puts File.read("./lib/welcome_message.txt")
    welcome_menu
  end

  def welcome_menu
    user_input = gets.chomp
    if user_input.downcase == ("p" || "play")
      game_play
    elsif user_input.downcase == ("i" || "instructions")
      puts File.read("./lib/instruction_message.txt")
      welcome
    elsif user_input.downcase == ("q" || "quit")
      end_game
    else
      puts "Try again"
      welcome
    end
  end

  def game_play
    g = Game.new
    g.computer_selects_2ship_coordinates
  end

  def end_game
    puts "Thanks for playing!"
  end

end

intrepid = Battleship.new
