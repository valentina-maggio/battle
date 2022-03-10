require 'player'

describe Player do
  subject(:player) { described_class.new("Hal")}

  describe '#name' do
    it "returns player's name" do
      expect(player.name).to eq "Hal"
    end
  end
end