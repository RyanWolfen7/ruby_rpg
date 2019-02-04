class Attack

  def damage(target, weapon = 0)
    target[:current] -= rand(5) + weapon
  end
end
