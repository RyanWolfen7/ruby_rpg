class Two_handed_sword < Sword
  def initialize(unique_name = nil)
    @name = 'Two Handed Sword'
    @unique_name = unique_name
    @reach = 6
    @handed = 2
    @switchable = false
    @type = 'sword'
  end

  def damage
    rand(1..8) + rand(1..8)
  end

end
