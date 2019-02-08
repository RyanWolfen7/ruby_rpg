require_relative '../race.rb'

class Human < Race

  def initialize(sub_race = "Standard")
    @name = "Human"
    @sub_race = sub_race
    @stat_bonus = { char: 2, int: 2}
  end

  def core_modifiers
    modifier = { health: 0, magic: 0, stamina: 0, xp: -20}
  end
end
