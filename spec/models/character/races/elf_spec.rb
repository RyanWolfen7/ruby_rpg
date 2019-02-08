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

  describe '#core_modifiers' do
    let(:race) {Elf.new}
    let(:modifier) { {health: 5, magic: 10, stamina: 0, xp: 15} }

    it 'is expected to return core modifier hash' do
      expect(race.core_modifiers).to eq modifier
    end
  end
end
