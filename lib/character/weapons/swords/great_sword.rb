class Great_sword < Sword
  def initialize(unique_name = nil)
    @name = 'Great Sword'
    @unique_name = unique_name
    @reach = 8
    @handed = 2
    @switchable = false
    @type = 'sword'
  end

  def damage
    rand(1..20) + rand(1..20)
  end

end
