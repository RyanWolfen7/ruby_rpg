require "./lib/character/stat_gen.rb"

describe Stat_gen do
  let(:gen) {Stat_gen.new}

  describe '#initialize' do
    it 'should have an stat hash' do
      expect(gen.stats).to be_a Hash
    end

    it 'should have an stat array with base stats' do
      default = {
          str: 12, dex: 12, const: 12,
          char: 12, wis: 12, int: 12
      }
      expect(gen.stats).to eq default
    end

    it 'should respond to min rand' do
      allow(Kernel).to receive(:rand).and_return(24)
      expect(gen.points).to eq 24
    end

    it 'should respond to min rand' do
      allow(Kernel).to receive(:rand).and_return(38)
      expect(gen.points).to eq 38
    end
  end

  describe '#add' do
    it 'should add 1 to strength and minues one point' do
      allow(Kernel).to receive(:rand).and_return(24)
      gen.add({str: 1})
      expect(gen.stats[:str]).to eq 13
      expect(gen.points).to eq 23
    end
  end

  describe '#subtract' do
    it 'should add 1 to strength and minues one point' do
      allow(Kernel).to receive(:rand).and_return(24)
      gen.add({str: 1})
      expect(gen.stats[:str]).to eq 11
      expect(gen.points).to eq 25
    end
  end
end
