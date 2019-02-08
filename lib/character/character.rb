class Character
  DEFAULT_STATS = {
    str: 12, dex: 12, const: 12,
    char: 12, wis: 12, int: 12
  }
  DEFAULT_XP = {
    max: 100, current: 0
  }
  DEFAULT_STATUS = {
    stun: 0, poison: 0, burn: 0, shock: 0,
    blind: 0, silence: 0, slow: 0, curse: 0
  }
  DEFAULT_LEVEL = 1
  LEVEL_UP_MODIFIER = 50
  ZERO = 0


  attr_reader :name, :race, :class,
              :hp, :magic, :stamina,
              :stats, :level, :xp,
              :status

  def initialize(name, race, c_class, stats = DEFAULT_STATS)
    @name = name
    @race = race
    @class = c_class
    @stats = add_stat_bonus(stats)
    @hp = add_hp
    @magic = add_magic
    @stamina = add_stamina
    @xp = add_xp
    @level = DEFAULT_LEVEL
    @status = DEFAULT_STATUS
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

  def add_stat_bonus(stats)
    return stats unless @race.is_a?(Race) && @class.is_a?(C_class)
    temp = Hash.new(0)
    stats.each {|key, count| temp[key] += count}
    @race.stat_bonus.each {|key, count| temp[key] += count}
    @class.stat_bonus.each {|key, count| temp[key] += count}
    return temp
  end

  def add_hp
    health = { max: (@stats[:const] * 3), current: (@stats[:const] * 3)}
    return health unless @race.is_a?(Race) && @class.is_a?(C_class)
    num = 0
    @race.core_modifiers.each {|key, count|
      if key == :health
        num = count + health[:max] if key == :health
      end
    }
    return {max: num, current: num}
  end

  def add_magic
    magic = {
      max: (@stats[:int] + @stats[:wis]),
      current: (@stats[:int] + @stats[:wis])
    }
    return magic unless @race.is_a?(Race) && @class.is_a?(C_class)
    num = 0
    @race.core_modifiers.each {|key, count|
      if key == :magic
        num = count + magic[:max] if key == :magic
     end
    }
    return {max: num, current: num}
  end

  def add_stamina
    stamina = {max: (@stats[:dex] * 3), current: (@stats[:dex] * 3)}
    return stamina unless @race.is_a?(Race) && @class.is_a?(C_class)
    num = 0
    @race.core_modifiers.each {|key, count|
      num = count + stamina[:max] if key == :stamina
    }
    return {max: num, current: num}
  end

  def add_xp
    xp = DEFAULT_XP
    return xp unless @race.is_a?(Race) && @class.is_a?(C_class)
    num = 0
    @race.core_modifiers.each do |key, count|
      num = count + 100 if key == :xp
    end
    return {max: num, current: 0}
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
