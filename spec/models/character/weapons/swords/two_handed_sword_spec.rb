require './lib/character/weapons/swords/two_handed_sword.rb'

describe Two_handed_sword do
  it { expect(described_class).to be < Weapon }
  it { expect(described_class).to be < Sword }

  let(:gs) {Two_handed_sword.new}

  describe '#initialize' do
    it 'should have the name two handed sword' do
      expect(gs.name).to eq "Two Handed Sword"
    end

    it 'should have nil unique_name' do
      expect(gs.unique_name).to eq nil
    end

    it 'should have nil unique_name' do
      gs = Two_handed_sword.new('test')
      expect(gs.unique_name).to eq 'test'
    end

    it 'should have a reach of 8' do
      expect(gs.reach).to eq 6
    end

    it 'should be 2 handed' do
      expect(gs.handed).to eq 2
    end

    it 'should not be switchable' do
      expect(gs.switchable).to eq false
    end

    it 'should be type sword' do
      expect(gs.type).to eq 'sword'
    end
  end
  describe '#damage' do
    it 'should return 20' do
      allow(gs).to receive(:rand).and_return(8)
      allow(gs).to receive(:rand).and_return(8)
      expect(gs.damage).to eq 16
    end
  end

end
