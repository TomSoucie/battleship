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

  def test_the_grid_will_print_to_terminal_based_on_input
    #functional test - verify visually via terminal output

    g = Game.new
    g.get_input #Enter variety of cells starting with A1
    #visually verify output to screen
  end
end