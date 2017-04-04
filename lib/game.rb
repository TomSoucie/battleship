
class Game

  def initialize
    @player_1_grid = Array.new(4) { Array.new(4)}
    @player_2_grid = Array.new(4) { Array.new(4)}
    @player_1_shots = Array.new(4) { Array.new(4)}
    @player_2_shots = Array.new(4) { Array.new(4)}
    @user_input = ""
  end

  def computer_ship_placement
    @player_2_grid = rand #places x2 and x3 ships
    get_input
  end

  def get_input
    puts "Enter input in the row/column format eg; A2 "
    @user_input = gets.chomp.chars
    make_the_grid
  end

  def make_the_grid
    if @user_input[0] == "A"
      @player_1_grid[0][(@user_input[1].to_i)-1] = "X"
    elsif @user_input[0] == "B"
      @player_1_grid[1][(@user_input[1].to_i)-1] = "X"
    elsif @user_input[0] == "C"
      @player_1_grid[2][(@user_input[1].to_i)-1] = "X"
    elsif @user_input[0] == "D"
      @player_1_grid[3][(@user_input[1].to_i)-1] = "X"
    end     
    display_the_grid
  end

  def display_the_grid
    puts "---------------------------\n" * 2
    format = '%-3s %-6s %-6s %-6s %-6s'
    puts format % [".", "1", "2", "3", "4"]
    @player_1_grid.each_with_index do |member, i|
      puts format % [ (i+65).chr, @player_1_grid[i][0].to_s, @player_1_grid[i][1].to_s, @player_1_grid[i][2].to_s, @player_1_grid[i][3].to_s]
    end
    puts "---------------------------\n" * 2
  end

end