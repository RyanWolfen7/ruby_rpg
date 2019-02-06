class Switch_handed

  attr_reader :weapon

  def initialize(weapon)
    @weapon = weapon
  end
  def switch
    if @weapon.switchable == true
     @weapon.handed == 2 ? @weapon.handed = 1 : @weapon.handed = 2
    else
      @weapon.handed
    end

    return @weapon
  end
end
