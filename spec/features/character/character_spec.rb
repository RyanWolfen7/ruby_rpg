require './lib/character/character.rb'
require './lib/character/races/human.rb'

describe '###Feature Test###' do
  describe '#RACE#' do
    describe 'Human' do
      it 'should load a race and be able to be called' do
        stat_bonus = { char: 2, int: 2}
        race = Human.new
        character = Character.new("Ryan", race, Fighter.new)
        expect(character.race).to eq race
        expect(character.race.name).to eq "Human"
        expect(character.race.sub_race).to eq "Standard"
        expect(character.race.stat_bonus).to eq stat_bonus
      end

    it 'should add the human race bonus to character' do
        race = Human.new
        character = Character.new("Ryan", race, Fighter.new)
        expect(character.stats[:char]).to eq 14
        expect(character.stats[:int]).to eq 14
      end
    end
  end

  describe '#CLASS#' do
    describe 'Fighter' do
      it 'should load the class' do
        stat_bonus = { str: 1, const: 1, dex: 1}
        race = Human.new
        fighter = Fighter.new
        character = Character.new("Ryan", race, fighter)
        expect(character.class).to eq fighter
        expect(character.class.name).to eq "Fighter"
        expect(character.class.stat_bonus).to eq stat_bonus
      end

      it 'should add fighter bonus to character' do
        race = Human.new
        fighter = Fighter.new
        character = Character.new("Ryan", race, fighter)
        expect(character.stats[:str]).to eq 13
        expect(character.stats[:const]).to eq 13
        expect(character.stats[:dex]).to eq 13
      end

      it 'should be able to front_kick' do
        ryan = Character.new("Ryan", Human.new, Fighter.new(Skills_fighters.new))
        enemy = Character.new("enemy", Human.new, Fighter.new(Skills_fighters.new))
        allow(ryan.class.skills).to receive(:rand).and_return(5)
        ryan.class.skills.front_kick(enemy.hp, enemy.status)
        expect(enemy.hp[:current]).to eq 34
        expect(enemy.status[:stun]).to eq 3
      end

      it 'should be able to simple_first_aid' do
        ryan = Character.new("Ryan", Human.new, Fighter.new(Skills_fighters.new))
        enemy = Character.new("enemy", Human.new, Fighter.new(Skills_fighters.new))
        allow(ryan.class.skills).to receive(:rand).and_return(5)
        ryan.class.skills.front_kick(enemy.hp, enemy.status)
        allow(enemy.class.skills).to receive(:rand).and_return(5)
        enemy.class.skills.simple_first_aid(enemy.hp)
        expect(enemy.hp[:current]).to eq 39
      end
    end
  end
end
