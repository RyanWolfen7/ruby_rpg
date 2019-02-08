class Elf < Race

  def initialize(sub_race = "Standard")
    @name = 'Elf'
    @sub_race = sub_race
    @stat_bonus = {wis: 2, int:2}
  end

end
