class Short_sword < Sword

  def initialize(unique_name = nil)
    @name = "Short Sword"
    @unique_name = unique_name
    @reach = 3
    @handed = 1
  end

end
