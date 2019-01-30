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

    it 'should have sub_race name' do
      race = Human.new("Bodrin")
      expect(race.sub_race).to eq "Bodrin"
    end

    it 'should default to Standard if no param given' do
      race = Human.new
      expect(race.sub_race).to eq "Standard"
    end
  end
end
