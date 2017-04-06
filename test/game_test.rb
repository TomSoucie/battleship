gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test
  def test_the_object_is_a_game
    g = Game.new

    assert_instance_of Game, g
  end

  def test_the_computer_selects_2ship_coordinates
    g = Game.new
    result = g.computer_selects_2ship_coordinates

    assert_equal 2, result.count
    assert_instance_of Array, result
    assert_instance_of String, result[0]
    assert_instance_of String, result[1]
    
    first_letter = result[0][0]
    first_number = result[0][1]
    second_letter = result[1][0]
    second_number = result[1][1]
    assert (first_letter == second_letter || first_number == second_number)
  end

  def test_input_is_validated
    g = Game.new
    
  end
 
  def test_the_computer_can_randomly_select_a_ship
    skip
    g = Game.new
    g.computer_ship_coordinate_selection(2)

    assert_equal 2, @player_2_grid.count
  end

  def test_the_game_can_take_input
    skip
    g = Game.new
    g.get_input
    # visually assert variety of input
  end

  def test_the_game_will_detect_a_diagonal_error
    skip
    g = Game.new
    #manually enter diagonally invalid coordinates for a 2space ship
    assert_equal "That's diagonal, vertical position only!", g.get_input
  end

  def test_the_grid_will_print_to_terminal_based_on_input
    skip
    #functional test - verify visually via terminal output

    g = Game.new
    g.get_input
    #visually verify output to screen
  end
end