class Character
  DEFAULT_CORE_STATS = {
    max: 100, current: 100
  }
  DEFAULT_STATS = {
    str: 12, dex: 12, const: 12,
    char: 12, wis: 12, int: 12
  }

  attr_reader :name, :race, :class, :hp, :magic, :stamina, :stats

  def initialize(name, race, c_class, stats = DEFAULT_STATS)
    @name = name
    @race = race
    @class = c_class
    @hp = DEFAULT_CORE_STATS
    @magic = DEFAULT_CORE_STATS
    @stamina = DEFAULT_CORE_STATS
    @stats = stats
  end

end
