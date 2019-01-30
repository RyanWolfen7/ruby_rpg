require './lib/character/classes/fighter.rb'

describe Fighter do
  describe '#initialize' do
    it 'should be named fighter' do
      fighter = Fighter.new
      expect(fighter.name).to eq "Fighter"
    end

    it 'should have a stat_bonus' do
      fighter = Fighter.new
      stats = { str: 1, const: 1, dex: 1}
      expect(fighter.stat_bonus).to eq stats
    end
  end
end
