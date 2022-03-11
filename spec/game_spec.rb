require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player}
  let(:player2) { double :player}

  describe '#player1' do
    it 'has player1 as an instance' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'has player2 as an instance' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.attacker).to eq player1
    end
  end

  describe '#switch_turn' do
    it 'switches the turn' do
      game.switch_turn
      expect(game.attacker).to eq player2
    end
  end

  describe '#game_over?' do
    it 'returns false if both players still have remaining HPs' do
      allow(player1).to receive(:hit_points).and_return(20)
      allow(player2).to receive(:hit_points).and_return(20)
      expect(game.game_over?).to eq false
    end

    it 'returns true if one player has 0 HPs' do
      allow(player1).to receive(:hit_points).and_return(0)
      allow(player2).to receive(:hit_points).and_return(20)
      expect(game.game_over?).to eq true
    end
  end
end
