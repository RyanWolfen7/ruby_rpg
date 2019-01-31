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
      target = {max: 100, current: 90}
      allow(subject).to receive(:rand).and_return(3)
      expect(fighter.simple_first_aid(target)).to eq 93
    end
  end
end
