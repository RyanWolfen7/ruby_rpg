class Long_sword < Sword

  def initialize(unique_name = nil)
    @name = 'Long Sword'
    @unique_name = unique_name
    @reach = 4
    @handed = 2
    @type = 'sword'
  end

  def damage
    rand(1..8)
  end
end
