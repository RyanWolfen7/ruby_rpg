require './lib/core/attack.rb'

describe Attack  do

  describe '#damage' do
    it 'should deal damage' do
      character = Character.new("Name", "Race", "Class")
      enemy = {max: 100, current:100}
      allow(character).to receive(:rand).and_return(5)
      character.attack(enemy)
      expect(enemy[:current]).to eq 95
    end

    it 'should deal damage with weapon modifier' do
      character = Character.new("Name", "Race", "Class")
      enemy = {max: 100, current:100}
      allow(character).to receive(:rand).and_return(5)
      character.attack(enemy, 5)
      expect(enemy[:current]).to eq 90
    end
  end
end
