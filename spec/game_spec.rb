
require 'game'
require 'player'

describe Game do

subject(:chicago_game)  {described_class.new(chicago, mittens)}
subject(:game)          {described_class.new(dave, mittens)}
subject(:finished_game) {described_class.new(dead_player, mittens)}
let (:dave)        {double(:player, hit_points: 60)}
let (:mittens)     {double(:player, hit_points: 60)}
let (:dead_player) {double(:player, hit_points: 0)}
let(:chicago)       {Player.new(:dave)}

  describe '#initialize' do
    it 'takes player names' do
      expect(game.player_1).to eq dave
      expect(game.player_2).to eq mittens
    end
  end

  describe '#current_turn' do
    it 'starts as player_1' do
      expect(game.current_turn).to eq dave
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq mittens
    end
  end

  describe '#current_opponent' do
    it 'tells you the current opponent' do
      expect(game.current_opponent).to eq mittens
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0hp' do
      expect(game.game_over?).to be false
    end
    it 'returns true if at least one player is at 0hp' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0hp' do
      expect(finished_game.loser).to eq dead_player
    end
  end
#this test is nonsense, I need to work out how to use doubles here.
  describe '.heal' do
    it 'gives the player +5 hp' do
      chicago_game.heal
      expect(chicago.hit_points).to eq 60
    end
  end

end
