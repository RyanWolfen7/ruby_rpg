require_relative '../skills.rb'

class Skills_fighters < Skills

  attr_reader :list

    def initialize
      @list = []
    end

end
