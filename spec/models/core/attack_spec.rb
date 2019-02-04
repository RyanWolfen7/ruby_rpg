require './lib/core/attack.rb'

describe Attack  do
  let(:sword) {Short_sword.new}
  let(:attack) {Attack.new}
  let(:enemy) { {max: 100, current: 100} }

  describe '#damage' do
    it 'should deal damage' do
      allow(attack).to receive(:rand).and_return(5)
      attack.damage(enemy)
      expect(enemy[:current]).to eq 95
    end

    it 'should deal damage with weapon modifier' do
      allow(attack).to receive(:rand).and_return(5)
      allow(sword).to receive(:rand).and_return(5)
      attack.damage(enemy, sword.damage)
      expect(enemy[:current]).to eq 90
    end
  end
end
