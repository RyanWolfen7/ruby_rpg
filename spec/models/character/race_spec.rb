require './lib/character/race.rb'

describe Race do
  describe '#init' do
    it 'should hold a nil name' do
      race = Race.new
      expect(race.name).to eq nil
    end
  end
end
