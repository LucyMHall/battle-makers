require '././lib/player'

describe Player do
  it 'returns its name' do
    player = Player.new("Dave")
    expect(player.name). to eq("Dave")
  end
end
