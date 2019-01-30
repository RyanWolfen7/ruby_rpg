require './lib/character/races/human.rb'

describe Human do
  describe '#Init' do
    it 'should initialize modifiers' do
      race = Human.new
      bonus = { char: 2, int: 2}
      expect(race.stat_bonus).to eq bonus
    end

    it 'should have the race name' do
      race = Human.new
      expect(race.name).to eq ("Human")
    end
  end
end
