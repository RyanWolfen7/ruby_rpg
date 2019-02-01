require_relative '../skills.rb'

class Skills_fighters < Skills

  attr_reader :list

    def initialize
      @list = []
    end

    def simple_first_aid(target)
      target[:current] += rand(3..5)
    end

    def front_kick(target_health)
      target_health[:current] -= rand(5)
    end
end
