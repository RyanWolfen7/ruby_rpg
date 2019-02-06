class Sword < Weapon
  attr_accessor :handed

  def initialize
    @handed = nil
    @type = "sword"
  end
end
