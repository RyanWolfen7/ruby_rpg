class Sword < Weapon
  attr_reader :handed

  def initialize
    @handed = nil
    @type = "sword"
  end
end
