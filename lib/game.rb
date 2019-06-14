class Game

  attr_reader :player_2_hit_points, :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
  end

  def attack(opponent)
    opponent.attacked
  end

  def attacker
    @players[0]
  end

  def opponent
    @players[1]
  end

  def switch_players
    @players.reverse!
  end

  def zero_hit_points?(player)
    player.hit_points <= 0
  end

end
