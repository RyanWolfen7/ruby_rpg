require './lib/character/race.rb'

describe Race do
  describe '#init' do
    it 'should hold a nil name' do
      race = Race.new
      expect(race.name).to eq nil
    end

    it 'should hold a nil sub_race' do
      race = Race.new
      expect(race.sub_race).to eq nil
    end

    it 'should hold a nil bonus' do
      race = Race.new
      expect(race.bonus).to eq nil
    end
  end
end
