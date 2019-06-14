require '././lib/game'

describe Game do
  describe 'attack' do
    xit 'calls the attacked method on the player' do
      player_2 = double('player')
      player_1 = double('player')
      allow(player_2).to receive(:attacked)
      game = Game.new(player_1, player_2)
      game.attack(player_2)
    end
  end
end
