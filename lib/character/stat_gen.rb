class Stat_gen

  DEFAULT_STATS = {
    str: 12, dex: 12, const: 12,
    char: 12, wis: 12, int: 12
  }

  attr_accessor :stats, :points

  def initialize
    @stats = DEFAULT_STATS
    @points = Kernel.rand(20..38)
  end

  def add(stat)
    return if max_stat?(stat)
    temp = Hash.new(0)
    stats.each {|key, count| temp[key] += count}
    stat.each  {|key, count| temp[key] += count}
    @stats = temp
    @points -= 1
  end

  def subtract(stat)
    return if min_stat?(stat)
    temp = Hash.new(0)
    stats.each {|key, count| temp[key] += count}
    stat.each  {|key, count| temp[key] -= count}
    @stats = temp
    @points += 1
  end

  private

  def max_stat?(stat)
     @stats[stat.keys[0]] == 18
  end

  def min_stat?(stat)
     @stats[stat.keys[0]] == 10
  end
end
