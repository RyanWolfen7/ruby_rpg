class Sword < Weapon
  attr_reader :handed

  def intitialize
    @handed = nil
    @type = 'sword'
  end
end
