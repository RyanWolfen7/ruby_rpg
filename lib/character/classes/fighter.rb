require_relative '../class.rb'

class Fighter < C_class
  TEST_SKILLS = [0,1,2,3,4,5]

  attr_reader :name, :stat_bonus, :skills

  def initialize(skills = TEST_SKILLS)
    @name = "Fighter"
    @stat_bonus = { str: 1, const: 1, dex: 1}
    @skills = skills
  end
end
