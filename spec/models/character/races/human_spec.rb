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

  describe '#race_modifiers' do
    expect(race.race_modifiers).to
    eq {health: 0, magic: 0, stamina: 10, xp: -20}
  end
end
