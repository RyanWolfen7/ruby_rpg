require './lib/character/races/human.rb'

describe Human do
  describe '#Init' do

    let(:race) {Human.new}
    let(:bonus) {{char: 2, int: 2}}


    it 'should initialize modifiers' do
      expect(race.stat_bonus).to eq bonus
    end

    it 'should have the race name' do
      expect(race.name).to eq ("Human")
    end

    it 'should have sub_race name' do
      race = Human.new("Bodrin")
      expect(race.sub_race).to eq "Bodrin"
    end

    it 'should default to Standard if no param given' do
      expect(race.sub_race).to eq "Standard"
    end
  end

  describe '#core_modifiers' do
    let(:race) {Human.new}
    let(:modifier) { {health: 0, magic: 0, stamina: 0, xp: -20} }

    it 'is expected to return core modifier hash' do
      expect(race.core_modifiers).to eq modifier
    end
  end
end
