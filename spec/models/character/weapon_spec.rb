require './lib/character/weapon.rb'

describe Weapon do
  describe '#initialize do' do
    weapon = Weapon.new
    expect(weapon.name).to be nil
  end
end
