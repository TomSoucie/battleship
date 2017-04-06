module Fire
  def fire_sequence
    puts "Enter the coordinates to attempt to fire"
    player_shot = gets.chomp
    #check if player has attempted this shot and if so, return an error
    #else enter player_hit_sequence
  end

  def player_hit_sequence
    #if player_shot is a coordinate in @mac_grid, record a hit
      #if hit but not sunk return such message
      #elseif a miss return such message
      #else ship is sunk and game ends
  end
end