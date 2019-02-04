require './lib/character/classes/fighter.rb'

describe Fighter do
  describe '#initialize' do

    let(:fighter) {Fighter.new("skills")}

    it 'should be named fighter' do
      expect(fighter.name).to eq "Fighter"
    end

    it 'should have a stat_bonus' do
      stats = { str: 1, const: 1, dex: 1}
      expect(fighter.stat_bonus).to eq stats
    end

    it 'should have a skills list' do
      expect(fighter.skills).to eq 'skills'
    end
  end
end
