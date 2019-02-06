require './lib/character/weapon.rb'
require './lib/character/weapons/sword.rb'
require './lib/character/weapons/swords/long_sword.rb'

describe Long_sword do
  it { expect(described_class).to be < Weapon }
  it { expect(described_class).to be < Sword }

  let(:ls) {Long_sword.new}

  describe '#initialize' do
    it 'should have the name long sword' do
      expect(ls.name).to eq 'Long Sword'
    end
    it 'should have a unique name name long sword' do('Ublaaa')
      ls = Long_sword.new('Ublaaa')
      expect(ls.unique_name).to eq 'Ublaaa'
    end
    it 'should have a reach of 4' do
      expect(ls.reach).to eq 4
    end
    it 'should have a 2 for handed' do
      expect(ls.handed).to eq 2
    end

    it 'should have a switchable of true' do
      expect(ls.switchable).to eq true
    end

    it 'should be type sword' do
      expect(ls.type).to eq 'sword'
    end
  end

  describe '#damage' do
    it 'should return a random number one handed' do
      ls.handed = 1
      allow(ls).to receive(:rand).and_return(8)
      expect(ls.damage).to eq 8
    end
    it 'should return a random number two handed' do
      allow(ls).to receive(:rand).and_return(6)
      expect(ls.damage).to eq 12
    end
  end
end
