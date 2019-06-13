class Game

  attr_reader :player_2_hit_points

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2

  end

  def attack(player)
    @player_2.attacked
  end

end
