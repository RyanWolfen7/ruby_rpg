require './lib/character/weapons/swords/short_sword.rb'

describe Short_sword do
  it { expect(described_class).to be < Weapon }
  it { expect(described_class).to be < Sword }

  describe '#initialize' do
    it 'should have the name short sword' do
      shorty = Short_sword.new
      expect(shorty.name).to eq "Short Sword"
    end
  end
end
