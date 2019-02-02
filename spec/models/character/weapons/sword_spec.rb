require './lib/character/weapons/sword.rb'

describe Sword do
  describe Sword do
    it { expect(described_class).to be < Weapon }
  end

  describe '#initialize' do
    it 'should inherit name' do
      sword = Sword.new
      expect(sword.name).to eq nil
    end
    it 'should inherit reach' do
      sword = Sword.new
      expect(sword.reach).to eq nil
    end
    it 'should have a handed' do
      sword = Sword.new
      expect(sword.handed).to eq nil
    end

    it 'should have a type' do
      sword = Sword.new
      expect(sword.type).to eq nil
    end
  end
end
