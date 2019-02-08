require './lib/character/race.rb'

describe Race do
  let(:race) {Race.new}

  describe '#init' do
    it 'should hold a nil name' do
      expect(race.name).to eq nil
    end

    it 'should hold a nil sub_race' do
      expect(race.sub_race).to eq nil
    end

    it 'should hold a nil bonus' do
      expect(race.stat_bonus).to eq nil
    end
  end
end
