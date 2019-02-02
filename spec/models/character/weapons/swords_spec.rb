require './lib/character/weapons/sword.rb'

describe Sword < Weapon do
  describe '#initialize' do
    it 'should have a handed' do
      sword = Sword.new
      expect(sword).to include @handed
    end
  end
end
