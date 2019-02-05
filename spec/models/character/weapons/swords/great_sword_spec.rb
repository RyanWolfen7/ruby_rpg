require './lib/character/weapons/swords/great_sword.rb'

describe Great_sword do
  it { expect(described_class).to be < Weapon }
  it { expect(described_class).to be < Sword }

  let(:gs) {Great_sword.new}

  describe '#initialize' do
    it 'should have the name great sword' do
      expect(gs.name).to eq "Great Sword"
    end

    it 'should have nil unique_name' do
      expect(gs.unique_name).to eq nil
    end

    it 'should have nil unique_name' do
      gs = Great_sword.new('test')
      expect(gs.unique_name).to eq 'test'
    end

    it 'should have a reach of 8' do
      expect(gs.reach).to eq 8
    end

    it 'should be 2 handed' do
      expect(gs.handed).to eq 2
    end

    it 'should not be switchable' do
      expect(gs.switchable).to eq false
    end

    it 'should be type sword' do
      expect(gs.unique_name).to eq 'sword'
    end
  end


end
