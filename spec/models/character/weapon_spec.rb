require './lib/character/weapon.rb'

describe Weapon do
  describe '#initialize' do
    it 'should hold a nil name' do
      weapon = Weapon.new
      expect(weapon.name).to eq nil
    end
    it 'should hold a nil reach' do
      weapon = Weapon.new
      expect(weapon.reach).to eq nil
    end
  end
end
