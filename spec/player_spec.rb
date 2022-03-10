require 'player'

describe Player do
  subject(:hal) { described_class.new("Hal") }
  subject(:valentina) {described_class.new("Valentina") }

  describe '#name' do
    it 'returns the name' do
      expect(hal.name).to eq "Hal"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(valentina.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player HP by 10' do
      expect { hal.receive_damage }.to change { hal.hit_points }.by(-10)
    end
  end
end