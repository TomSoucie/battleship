gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test
  def test_the_object_is_a_game
    g = Game.new

    assert_instance_of Game, g
  end

  def test_the_computer_can_randomly_place_ships
    skip
  end

  def test_the_game_can_take_input
    skip
    g = Game.new
    g.get_input
    # visually assert variety of input
  end

  def test_the_game_will_detect_a_diagonal_error
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