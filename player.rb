require './game'

class Player
  attr_accessor :name, :blood
  def initialize(n)
    @name = n
    @blood = 3
  end

  def remain_blood(correct)
    if !correct
      @blood -= 1
      end
  end
end