require './lib/game'

class Battleship
  attr_reader   :start_time
  def initialize
    @start_time = Time.now
  end

end
