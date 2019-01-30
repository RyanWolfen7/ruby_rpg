require './lib/character/character.rb'
require './lib/character/races/human.rb'

describe '###Feature Test###' do
  describe Character do
    describe '#init' do
      it 'should load a race and be able to be called' do
        stat_bonus = { char: 2, int: 2}
        race = Human.new
        character = Character.new("Ryan", race, "Ranger")
        expect(character.race).to eq race
        expect(character.race.name).to eq "Human"
        expect(character.race.sub_race).to eq "Standard"
        expect(character.race.stat_bonus).to eq stat_bonus
      end

      it 'should add the human race bonus to character' do
        race = Human.new
        character = Character.new("Ryan", race, "Ranger")
        expect(character.stats[:char]).to eq 14
        expect(character.stats[:int]).to eq 14
      end
    end
  end
end
