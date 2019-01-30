class Character
  DEFAULT_CORE_STATS = {
    max: 100, current: 100
  }
  DEFAULT_STATS = {
    str: 12, dex: 12, const: 12,
    char: 12, wis: 12, int: 12
  }
  DEFAULT_XP = {
    max: 100, current: 0
  }
  DEFAULT_LEVEL = 1
  LEVEL_UP_MODIFIER = 50
  RESET_TO_ZERO = 0


  attr_reader :name, :race, :class,
              :hp, :magic, :stamina,
              :stats, :level, :xp

  def initialize(name, race, c_class, stats = DEFAULT_STATS)
    @name = name
    @race = race
    @class = c_class
    @hp = DEFAULT_CORE_STATS
    @magic = DEFAULT_CORE_STATS
    @stamina = DEFAULT_CORE_STATS
    @stats = stats
    @level = DEFAULT_LEVEL
    @xp = DEFAULT_XP
  end

  def dead?
    @hp[:current] == 0
  end

  def xp_gain(xp)
    @xp[:current] += xp
  end

  def level_up
    if @xp[:current] == @xp[:max]
      @level += 1
      @xp[:max] += @xp[:max] + LEVEL_UP_MODIFIER
      @xp[:current] = RESET_TO_ZERO
    end
  end
end
