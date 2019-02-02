require './lib/character/weapons/sword.rb'

describe Sword < Weapon do
  describe '#initialize' do
    it 'should have a handed' do
      sword = Sword.new
      expect(sword.handed).to eq nil
    end
  end
end
