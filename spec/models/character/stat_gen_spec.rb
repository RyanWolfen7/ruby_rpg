require "./lib/character/stat_gen.rb"

describe Stat_gen do
  let(:gen) {Stat_gen.new}

  describe '#initialize' do
    it 'should have an stat array with 0s' do
      expect(gen.stats).to be_a Hash
    end

    it 'should respond to min rand' do
      allow(gen).to receive(:rand).and_return(24)
      expect(gen.points).to eq 24
    end

    it 'should respond to min rand' do
      allow(gen).to receive(:rand).and_return(34)
      expect(gen.points).to eq 38
    end
  end
end
