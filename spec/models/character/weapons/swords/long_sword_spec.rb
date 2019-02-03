require './lib/character/weapons/swords/long_sword.rb'

describe Long_sword do
  it { expect(described_class).to be < Weapon }
  it { expect(described_class).to be < Sword }
  describe '#initialize' do
    it 'should have the name long sword' do
      ls = Long_sword.new
      expect(ls.name).to eq 'Long Sword'
    end
  end
end
