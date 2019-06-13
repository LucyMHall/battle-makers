require '././lib/player'

describe Player do
  it 'returns its name' do
    player = Player.new("Dave")
    expect(player.name).to eq("Dave")
  end
  it 'hit points are reduced by 10 when attacked' do
    player = Player.new("Dave")
    player.attacked
    expect(player.hit_points).to eq(50)
  end
end
