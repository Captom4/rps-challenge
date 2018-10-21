class Game
  WEAPONS = [:rock, :paper, :scissors]
  COMBINATIONS = { :rock => :scissors, :scissors => :paper, :paper => :rock }
  attr_reader :player1, :player2, :game, :result

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1, player2 = Player.new('Computer'))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def compare_players
    if COMBINATIONS[@player1.choice] == @player2.choice
      @result = "#{@player1.name} wins!"
    elsif @player1.choice == @player2.choice
      @result = "#{@player1.name} and #{@player2.name} have drawn"
    else
      @result = "#{@player2.name} wins!"
    end
  end

end