require './lib/character/weapons/sword.rb'

describe Sword do
  it { expect(described_class).to be < Weapon }
  let(:sword) {Sword.new}

  describe '#initialize' do
    it 'should inherit name' do
      expect(sword.name).to eq nil
    end
    it 'should inherit reach' do
      expect(sword.reach).to eq nil
    end
    it 'should have a handed' do
      expect(sword.handed).to eq nil
    end
    it 'should have a type sword' do
      expect(sword.type).to eq "sword"
    end
  end
end
