require './lib/character/skills/skills_fighter.rb'

describe Skills_fighters do
  describe '#Initialize' do
    it 'should have a name' do
      fighter = Skills_fighters.new
      expect(fighter.list).to eq []
    end
  end

  describe '#simple_first_aid' do
    it 'should return a random number 3' do
      fighter = Skills_fighters.new
      target = {max: 100, current: 90}
      allow(fighter).to receive(:rand).and_return(3)
      expect(fighter.simple_first_aid(target)).to eq 93
    end

    it 'should return a random number 4' do
      fighter = Skills_fighters.new
      target = {max: 100, current: 90}
      allow(fighter).to receive(:rand).and_return(4)
      expect(fighter.simple_first_aid(target)).to eq 94
    end

    it 'should return a random number 5' do
      fighter = Skills_fighters.new
      target = {max: 100, current: 90}
      allow(fighter).to receive(:rand).and_return(5)
      expect(fighter.simple_first_aid(target)).to eq 95
    end

    it 'should return a random number ' do
      fighter = Skills_fighters.new
      target = {max: 100, current: 90}
      expect(fighter.simple_first_aid(target)).to_not eq (90)
    end
  end
end
