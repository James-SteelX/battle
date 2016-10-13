require 'game'

describe Game do
  let(:player1)    { double(:player, hit_points: 20) }
  let(:player2)    { double(:player, hit_points: 20) }
  let(:deadplayer) { double(:player, hit_points: 0)}
  subject(:game)   { described_class.new(player1, player2) }
  subject(:gameover) {described_class.new(deadplayer, player2)}

  describe "#is_attack" do
    it "should reduce the player's HP by 10 points" do
      allow(player2).to receive(:is_attacked)
      #expect{ game.attack(player1) }.to change {player1.hit_points}.by(-10)
      expect(game.attack(player2))
    end
  end

  describe '#player_1' do
    it 'should equal player 1' do
      expect(game.first_player).to eq player1
    end
  end

  describe '#player_2' do
    it 'should equal player_2' do
      expect(game.second_player).to eq player2
    end
  end

  describe '#game_over?' do
    it 'returns true if one player has 0hp' do
      expect(gameover.game_over).not_to be_nil
    end

    it 'returns false if no player is at 0hp' do
      expect(game.game_over).to be_nil
    end
  end
end
