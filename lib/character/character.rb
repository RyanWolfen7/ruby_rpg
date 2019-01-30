class Character
  DEFAULT_HP = {
    max: 100, current: 100
  }
  DEFAULT_MAGIC = {
    max: 100, current: 100
  }
  DEFAULT_STAMINA = {
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
  ZERO = 0


  attr_reader :name, :race, :class,
              :hp, :magic, :stamina,
              :stats, :level, :xp

  def initialize(name, race, c_class, stats = DEFAULT_STATS)
    @name = name
    @race = race
    @class = c_class
    @hp = DEFAULT_HP
    @magic = DEFAULT_MAGIC
    @stamina = DEFAULT_STAMINA
    @stats = stats
    @level = DEFAULT_LEVEL
    @xp = DEFAULT_XP
  end

  def dead?
    @hp[:current] == ZERO
  end

  def xp_gain(xp)
    @xp[:current] += xp
  end

  def level_up
    if @xp[:current] == @xp[:max]
      @level += DEFAULT_LEVEL
      @xp[:max] += @xp[:max] + LEVEL_UP_MODIFIER
      @xp[:current] = ZERO
      @hp[:max] += @stats[:const]/3 + @level
      @hp[:current] = @hp[:max]
      @magic[:max] += (@stats[:int]/3) + (@stats[:wis]/3)
      @magic[:current] = @magic[:max]
      @stamina[:max] += @stats[:dex]/3 + @level
      @stamina[:current] = @stamina[:max]
    end
  end
end
