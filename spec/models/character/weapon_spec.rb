require './lib/character/weapon.rb'

describe Weapon do
  let(:weapon) {Weapon.new}
  describe '#initialize' do
    it 'should hold a nil name' do
      expect(weapon.name).to eq nil
    end
    it 'should hold a nil reach' do
      expect(weapon.reach).to eq nil
    end
    it 'should hold a nil unique_name' do
      expect(weapon.unique_name).to eq nil
    end
    it 'should hold a nil type' do
      expect(weapon.type).to eq nil
    end
  end
end
