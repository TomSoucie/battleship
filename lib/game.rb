require 'pry'

class Game

  def initialize
    @player_grid  = Array.new(4) { Array.new(4)}
    @player_shots = Array.new(4) { Array.new(4)}
    @mac_shots    = Array.new(4) { Array.new(4)}
    @row_selector = Random.new
    @col_selector = Random.new
    @two_s_ship   = ""
  end

  
  
  def computer_selects_2ship_coordinates
    @mac_grid = []
    2.times {|i| @mac_grid << [@row_selector.rand(65..68).chr, @col_selector.rand(1..4)].join }
    # binding.pry
    mac_input_validator
  end

  def mac_input_validator
    if ((@mac_grid[0][0] == @mac_grid[1][0]) && 
      (@mac_grid[0][1].to_i - @mac_grid[1][1].to_i).abs == 1) ||
      ((@mac_grid[0][0].unpack('c')[0] - @mac_grid[1][0].unpack('c')[0]).abs == 1 && 
      (@mac_grid[0][1] == @mac_grid[1][1]))
      get_input
    else
      computer_selects_2ship_coordinates
    end
  end

  def get_input
    puts "Enter the coordinates for your first ship, which takes 2 spaces"
    puts "Enter the coordinates seperated by a space - eg 'A1 A2' "
    @user_input = gets.chomp.split(" ")
    if ((@user_input[0][0] == @user_input[1][0]) && 
      (@user_input[0][1].to_i - @user_input[1][1].to_i).abs == 1) ||
      ((@user_input[0][0].unpack('c')[0] - @user_input[1][0].unpack('c')[0]).abs == 1 && 
      (@user_input[0][1] == @user_input[1][1]))
      # binding.pry
      make_the_grid
    else   
      if (@user_input[0][0] != @user_input[1][0]) && (@user_input[0][1] != @user_input[1][1])
        puts "That's diagonal, vertical position only is allowed. Try again!"
      elsif ((@user_input[0][0].unpack('c')[0] - @user_input[1][0].unpack('c')[0]).abs > 1) ||
         ((@user_input[0][1].to_i - @user_input[1][1].to_i) > 1)
        puts "That's over 2 spaces, try again"
      end
      get_input
    end
  end

  def make_the_grid
    @user_input.each do |coord|
      if coord[0] == "A"
        @player_grid[0][(coord[1].to_i)-1] = "X"
      elsif coord[0] == "B"
        @player_grid[1][(coord[1].to_i)-1] = "X"
      elsif coord[0] == "C"
        @player_grid[2][(coord[1].to_i)-1] = "X"
      elsif coord[0] == "D"
        @player_grid[3][(coord[1].to_i)-1] = "X"
      end 
    end     
    display_the_grid
  end

  def display_the_grid
    puts "---------------------------\n" * 2
    format = '%-3s %-6s %-6s %-6s %-6s'
    puts format % [".", "1", "2", "3", "4"]
    @player_grid.each_with_index do |member, i|
      puts format % [ (i+65).chr, @player_grid[i][0].to_s, @player_grid[i][1].to_s, @player_grid[i][2].to_s, @player_grid[i][3].to_s]
    end
    puts "---------------------------\n" * 2
  end
end