class Bastard_sword < Sword

  def initialize(unique_name = nil)
    @name = 'Bastard Sword'
    @unique_name = unique_name
    @reach = 5
    @handed = 2
    @switchable = true
    @type = 'sword'
  end

  def damage
    return rand(1..8) if @handed == 1
    return rand(1..8) + rand(1..8) if @handed == 2
  end
end
