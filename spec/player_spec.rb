require 'player'


# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

describe Player do
  subject(:player) { described_class.new('Player') }
  describe '#return_name' do
    it "should return name 'Player'" do
      expect(player.return_name).to eq "Player"
    end
    it "should return name 'Dave'" do
      player = Player.new('Dave')
      expect(player.return_name).to eq "Dave"
    end
  end
end
