class Switch_handed
  def switch(weapon_switchable, hand)
    if weapon_switchable == true
     hand == 2 ? hand = 1 : hand = 2
    else
      hand
    end
  end
end
