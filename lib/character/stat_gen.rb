class Stat_gen
  attr_reader :stats, :points

  def initialize
    @stats = {}
    @points = rand(24..38)
  end
end
