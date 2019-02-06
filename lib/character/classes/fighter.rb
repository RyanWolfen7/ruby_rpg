require_relative '../class.rb'

class Fighter < C_class

  attr_reader :name, :stat_bonus, :skills

  def initialize(skills)
    @name = "Fighter"
    @stat_bonus = { str: 1, const: 1, dex: 1}
    @skills = skills
  end
end
