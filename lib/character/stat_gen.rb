class Stat_gen

  DEFAULT_STATS = {
    str: 12, dex: 12, const: 12,
    char: 12, wis: 12, int: 12
  }

  attr_accessor :stats, :points

  def initialize
    @stats = DEFAULT_STATS
    @points = Integer
    points_cal
  end

  def points_cal
    @points = rand(24..38)
  end

  def add(stat)
    temp = Hash.new(0)
    stats.each {|key, count| temp[key] += count}
    stat.each  {|key, count| temp[key] += count}
    @stats = temp
    @points -= 1
  end
end
