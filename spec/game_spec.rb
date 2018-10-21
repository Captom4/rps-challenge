require 'rspec'
require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  subject(:player) { Player.new('bob') }
  subject(:game) { described_class.create(player) }
  describe '#new' do
    it 'should create a player object' do
      expect(described_class).to eq(Game)
    end
  end
  # describe '#game' do
  #   it 'should get the game instance' do
  #     expect(game.instance).to eq(game)
  #   end
  # end
  describe '#player' do
    it 'should return player' do
      expect(game.player).to eq(player)
    end
  end
end