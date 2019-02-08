require "./lib/character/stat_gen.rb"

describe Stat_gen do
  let(:gen) {Stat_gen.new}

  describe '#initialize' do
    it 'should have an stat array with 0s' do
      expect(gen.stats).to be_a Hash
    end
  end
end
