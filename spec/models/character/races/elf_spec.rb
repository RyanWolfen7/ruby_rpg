require './lib/character/races/elf.rb'

describe Elf do
  let(:elf) {Elf.new}
  let(:stats) {{wis: 2}}

  describe '#initialize' do
    it 'has name of elf' do
      expect(elf.name).to eq 'Elf'
    end
  end
end
