class Elf < Race

  def initialize(sub_race = "Standard")
    @name = 'Elf'
    @sub_race = sub_race
    @stat_bonus = {wis: 2, int:2}
  end

  def core_modifiers
    modifier = { health: 5, magic: 15, stamina: 0, xp: 20}
  end

end
