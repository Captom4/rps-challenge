class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = :none
  end

  def choose_hand(choice)
    @choice = choice
  end
end