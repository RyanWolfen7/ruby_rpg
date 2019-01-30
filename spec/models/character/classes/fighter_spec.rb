require './lib/character/classes/fighter.rb'

describe Fighter do
  describe '#initialize' do
    it 'should be named fighter' do
      fighter = Fighter.new
      expect(fighter.name).to eq "Fighter"
    end
  end
end
