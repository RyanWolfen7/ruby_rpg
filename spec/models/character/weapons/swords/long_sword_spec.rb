require './lib/character/weapons/swords/long_sword.rb'

describe Long_sword do
  it { expect(described_class).to be < Weapon }
  it { expect(described_class).to be < Sword }
  describe '#initialize' do
    it 'should have the name long sword' do
      ls = Long_sword.new
      expect(ls.name).to eq 'Long Sword'
    end
    it 'should have a unique name name long sword' do
      ls = Long_sword.new('Ublaaa')
      expect(ls.unique_name).to eq 'Ublaaa'
    end
    it 'should have a reach of 4' do
      ls = Long_sword.new
      expect(ls.reach).to eq 4
    end
    it 'should have a 2 for handed' do
      ls = Long_sword.new
      expect(ls.handed).to eq 2
    end
    it 'should be type sword' do
      ls = Long_sword.new
      expect(ls.type).to eq 'sword'
    end
  end
end
