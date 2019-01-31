require './lib/character/skills/skills_fighter.rb'

describe Skills_fighters do
  describe '#Initialize' do
    it 'should have a name' do
      fighter = Skills_fighters.new
      expect(fighter.list).to eq []
    end
  end
end
