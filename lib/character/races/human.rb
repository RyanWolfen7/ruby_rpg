require_relative '../race.rb'

class Human < Race

  attr_reader :stat_bonus, :name, :sub_race

  def initialize(sub_race = "Standard")
    @name = "Human"
    @sub_race = sub_race
    @stat_bonus = { char: 2, int: 2}
  end

end
