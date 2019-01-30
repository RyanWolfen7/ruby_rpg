require_relative '../class.rb'

class Fighter < C_class
  attr_reader :name, :stat_bonus

  def initialize
    @name = "Fighter"
    @stat_bonus = { str: 1, const: 1}
  end
end
