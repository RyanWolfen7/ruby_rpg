require './lib/character/weapons/swords/short_sword.rb'

describe Short_sword do
  it { expect(described_class).to be < Weapon }
  it { expect(described_class).to be < Sword }

  describe '#initialize' do
    it 'should have the name short sword' do
      shorty = Short_sword.new
      expect(shorty.name).to eq "Short Sword"
    end

    it 'should have the nil unique name' do
      shorty = Short_sword.new
      expect(shorty.unique_name).to eq nil
    end

    it 'should be able to init a unique name' do
      shorty = Short_sword.new('Dawn Breaker')
      expect(shorty.unique_name).to eq 'Dawn Breaker'
    end

    it 'should have a reach of 3' do
      shorty = Short_sword.new
      expect(shorty.reach).to eq 3
    end

    it 'should be one handed' do
      shorty = Short_sword.new
      expect(shorty.handed).to eq 1
    end

    it 'should be type sword' do
      shorty = Short_sword.new
      expect(shorty.type).to eq 'sword'
    end
  end

  describe '#damage' do
    it 'should do a random damage of 6' do
      shorty = Short_sword.new
      expect(shorty.damage).to eq 6
    end
  end
end
