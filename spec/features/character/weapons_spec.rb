require './lib/character/weapons/switch_handed.rb'
require './lib/character/weapon.rb'
require './lib/character/weapons/sword.rb'
require './lib/character/weapons/swords/long_sword.rb'

describe '####Weapon Feature#####' do
  let(:ls) {Long_sword.new}
  let(:switch_handed) {Switch_handed.new(ls)}

  describe '#switch_handed' do
    it 'should switch long sword handed from 2 to 1' do
      expect(ls.handed).to eq 2
      switch_handed.switch
      expect(ls.handed).to eq 1
    end
  end
end
