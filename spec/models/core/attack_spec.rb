require './lib/core/attack.rb'

describe Attack  do

  describe '#damage' do
    it 'should deal damage' do
      attack = Attack.new
      enemy = {max: 100, current:100}
      allow(attack).to receive(:rand).and_return(5)
      attack.damage(enemy)
      expect(enemy[:current]).to eq 95
    end

    it 'should deal damage with weapon modifier' do
      attack = Attack.new
      enemy = {max: 100, current:100}
      allow(attack).to receive(:rand).and_return(5)
      attack.damage(enemy)
      expect(enemy[:current]).to eq 90
    end
  end
end
