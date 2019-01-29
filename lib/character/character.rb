class Character
  DEFAULT_STATS = 100

  attr_reader :name, :race, :class, :hp, :magic, :stamina

  def initialize(name, race, c_class)
    @name = name
    @race = race
    @class = c_class
    @hp = DEFAULT_STATS
    @magic = DEFAULT_STATS
    @stamina = DEFAULT_STATS
  end

end
