gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test
  def test_the_object_is_a_game
    g = Game.new

    assert_instance_of Game, g
  end
end