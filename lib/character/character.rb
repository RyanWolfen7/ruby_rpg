class Character
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
    @stats = add_bonus(stats)
    @hp = { max: (@stats[:const] * 3), current: (@stats[:const] * 3) }
    @magic = { max: (@stats[:int] + @stats[:wis]), current: (@stats[:int] + @stats[:wis]) }
    @stamina = { max: (@stats[:dex] * 3), current: (@stats[:dex] * 3) }
    @level = DEFAULT_LEVEL
    @xp = DEFAULT_XP
  end

  def dead?
    @hp[:current] == ZERO
  end

  def xp_gain(xp)
    @xp[:current] += xp
    self.level_up if @xp[:current] == @xp[:max]
  end

  def level_up
    @level += DEFAULT_LEVEL
    level_up_xp
    level_up_hp
    level_up_magic
    level_up_stamina
  end

  private

  def add_bonus(stats)
    return stats unless @race.is_a?(Race)
    temp = Hash.new(0)
    stats.each {|key, count| temp[key] += count}
    @race.stat_bonus.each {|key, count| temp[key] += count}
    return temp
  end

  def level_up_xp
    @xp[:max] += @xp[:max] + LEVEL_UP_MODIFIER
    @xp[:current] = ZERO
  end

  def level_up_hp
    @hp[:max] += @stats[:const]/3 + @level
    @hp[:current] = @hp[:max]
  end

  def level_up_magic
    @magic[:max] += (@stats[:int]/3) + (@stats[:wis]/3)
    @magic[:current] = @magic[:max]
  end

  def level_up_stamina
    @stamina[:max] += @stats[:dex]/3 + @level
    @stamina[:current] = @stamina[:max]
  end
end
