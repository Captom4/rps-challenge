require 'rspec'
require_relative '../lib/computer'

describe Player do
  subject(:computer) { described_class.new }
  describe '#new' do
    it 'should create a computer object' do
      expect(described_class).to eq(Player)
    end
  end
  describe '#name' do
    it "should return the computer's choice" do
      # expect(computer.weapon).to eq()
    end
  end
end