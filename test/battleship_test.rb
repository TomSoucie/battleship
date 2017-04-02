gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'

class BattleshipTest < Minitest::Test
  def test_the_object_is_a_battleship
    intrepid = Battleship.new

    assert_instance_of Battleship, intrepid 
  end
end