require 'rspec'
require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new('bob') }
  describe '#new' do
    it 'should create a player object' do
      expect(described_class).to eq(Player)
    end
  end
  describe '#name' do
    it 'should return the players name' do
      expect(player.name).to eq('bob')
    end
  end

  describe '#choice' do
    before do
      player.choose_hand(:rock)
    end
    it 'should return the players choice' do
      expect(player.choice). to eq(:rock)
    end
  end
end