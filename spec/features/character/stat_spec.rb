require './lib/character/character.rb'
require './lib/character/races/human.rb'
require './lib/core/dead.rb'
require './lib/character/stat_gen.rb'

describe '###Feature Test###' do
  let(:stats) {Stat_gen.new}

  describe '#STAT GEN' do
    it 'add stats and check if it loads into humans' do
      allow(Kernel).to receive(:rand).and_return(24)
      2.times { stats.subtract({str: 1})}
      expect(stats.stats[:str]).to eq 10
      expect(stats.points).to eq 26
      4.times { stats.add({dex: 1})}
      4.times { stats.add({const: 1})}
      4.times { stats.add({char: 1})}
      4.times { stats.add({wis: 1})}
      6.times { stats.add({int: 1})}
      expect(stats.stats[:dex]).to eq 16
      expect(stats.stats[:const]).to eq 16
      expect(stats.stats[:char]).to eq 16
      expect(stats.stats[:wis]).to eq 16
      expect(stats.stats[:int]).to eq 18
    end
  end



end
