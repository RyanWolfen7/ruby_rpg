class Sword < Weapon
  attr_reader :handed, :type

  def intitialize
    @handed = nil
    @type = nil
  end
end
