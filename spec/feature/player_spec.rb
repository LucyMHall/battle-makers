require '././lib/player'

describe Player do

  before (:each) do
    @player = Player.new("Dave")
  end

  describe '#name' do
    it 'returns its name' do
      expect(@player.name).to eq("Dave")
    end
  end

  describe '#attacked' do
    it 'loses and random number of HP when attacked' do
      allow(@player).to receive(:random_number_generator) {10}
      @player.attacked
      expect(@player.hit_points).to eq(50)
    end
  end

end
