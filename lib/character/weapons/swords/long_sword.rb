class Long_sword < Sword

  def initialize(unique_name = nil)
    @name = 'Long Sword'
    @unique_name = unique_name
    @reach = 4
    @handed = 2
    @switchable = true
    @type = 'sword'
  end

  def damage
    return rand(1..8) if @handed == 1
    return rand(1..6) + rand(1..6) if @handed == 2
  end
end
