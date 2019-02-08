require './lib/character/races/elf.rb'

describe Elf do

  it { expect(described_class).to be < Race }

  let(:elf) {Elf.new}
  let(:stats) {{wis: 2, int: 2}}


  describe '#initialize' do
    it 'has name of elf' do
      expect(elf.name).to eq 'Elf'
    end

    it 'should have subrace' do
      elf = Elf.new('test')
      expect(elf.sub_race).to eq 'test'
    end

    it 'has name of elf' do
      expect(elf.stat_bonus).to eq stats
    end
  end
end
