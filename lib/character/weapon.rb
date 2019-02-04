class Weapon

  attr_reader :name, :reach, :unique_name, :type, :switchable

  def initialize
    @name = nil
    @reach = nil
    @unique_name = nil
    @type = nil
    @switchable = nil
  end
end
