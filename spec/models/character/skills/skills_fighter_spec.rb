require './lib/character/skills/skills_fighter.rb'

describe Skills_fighters do
  describe '#Initialize' do
    it 'should have a name' do
      fighter = Skills_fighters.new
      expect(fighter.list).to eq []
    end
  end

  describe '#simple_first_aid' do
    it 'should return a random number between 3-5' do
      fighter = Skills_fighters.new
      allow(fighter.simple_first_aid).to receive(:rand).and_return(3)
      expect(fighter.simple_first_aid).to eq 3
    end
  end
end
