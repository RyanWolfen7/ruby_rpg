class Human

  attr_reader :stat_bonus, :name

  def initialize
    @name = "Human"
    @stat_bonus = { char: 2, int: 2}
  end

end
