
class Game
  
  def initialize
    @player_1_grid = Hash.new
    @player_2_grid = Hash.new
    @player_1_shots = Hash.new
    @player_2_shots = Hash.new
  end

  def computer_ship_placement
    @player_2_grid = rand #places x2 and x3 ships
    player_1_input
end

end