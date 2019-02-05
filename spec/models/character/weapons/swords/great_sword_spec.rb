require './lib/character/weapons/swords/great_sword.rb'

describe Great_sword do
  it { expect(described_class).to be < Weapon }
  it { expect(described_class).to be < Sword }



end
