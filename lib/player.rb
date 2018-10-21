class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = :none
  end

  def choose_hand(choice)
    fail 'not a possible choice' unless Game::WEAPONS.include? choice.to_sym
    @choice = choice.to_sym
  end
end