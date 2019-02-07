require './lib/character/character.rb'
require './lib/character/races/human.rb'
require './lib/core/dead.rb'

describe '###Feature Test###' do
  let(:attack) {Attack.new}
  let(:dead) {Dead.new}
  let(:sword) {Short_sword.new}

  describe '#RACE#' do
    describe 'Human' do
      let(:character) {Character.new("Ryan", Human.new, Fighter.new(Skills_fighters))}

      it 'should load a race and be able to be called' do
        stat_bonus = { char: 2, int: 2}
        expect(character.race).to be_a(Human)
        expect(character.race.name).to eq "Human"
        expect(character.race.sub_race).to eq "Standard"
        expect(character.race.stat_bonus).to eq stat_bonus
      end

      it 'should add the human race bonus to character' do
        expect(character.stats[:char]).to eq 14
        expect(character.stats[:int]).to eq 14
      end

      it 'should add the core_modifiers to human' do
        expect(character.xp[:max]).to eq 80
      end
    end
  end

  describe '#CLASS#' do
    describe 'Fighter' do
      let(:character) {Character.new("Ryan", Human.new, Fighter.new(Skills_fighters.new))}
      let(:enemy) {Character.new("enemy", Human.new, Fighter.new(Skills_fighters.new))}


      it 'should load the class' do
        stat_bonus = { str: 1, const: 1, dex: 1}
        expect(character.class).to be_a(Fighter)
        expect(character.class.name).to eq "Fighter"
        expect(character.class.stat_bonus).to eq stat_bonus
      end

      it 'should add fighter bonus to character' do
        expect(character.stats[:str]).to eq 13
        expect(character.stats[:const]).to eq 13
        expect(character.stats[:dex]).to eq 13
      end

      it 'should be able to front_kick' do
        allow(character.class.skills).to receive(:rand).and_return(5)
        character.class.skills.front_kick(enemy.hp, enemy.status)
        expect(enemy.hp[:current]).to eq 34
        expect(enemy.status[:stun]).to eq 3
      end

      it 'should be able to simple_first_aid' do
        allow(character.class.skills).to receive(:rand).and_return(5)
        character.class.skills.front_kick(enemy.hp, enemy.status)
        allow(enemy.class.skills).to receive(:rand).and_return(5)
        enemy.class.skills.simple_first_aid(enemy.hp)
        expect(enemy.hp[:current]).to eq 39
      end
    end
  end

  describe '#dead' do
    let(:character) {Character.new("Ryan", Human.new, Fighter.new(Skills_fighters.new))}
    let(:enemy) {Character.new("enemy", Human.new, Fighter.new(Skills_fighters.new))}

    it 'should return true when enemy dies' do
      allow(attack).to receive(:rand).and_return(5)
      allow(sword).to receive(:rand).and_return(34)
      attack.damage(enemy.hp,sword.damage)
      expect(dead.true?(enemy.hp)).to eq true
    end

    it 'should return false when enemy hit' do
      allow(attack).to receive(:rand).and_return(5)
      allow(sword).to receive(:rand).and_return(33)
      attack.damage(enemy.hp,sword.damage)
      expect(dead.true?(enemy.hp)).to eq false
    end

    it 'check if enemy can be over killed' do
      allow(attack).to receive(:rand).and_return(5)
      allow(sword).to receive(:rand).and_return(134)
      attack.damage(enemy.hp,sword.damage)
      expect(dead.true?(enemy.hp)).to eq true
    end
  end

  describe '#Attack' do
    let(:character) {Character.new("Ryan", Human.new, Fighter.new(Skills_fighters.new))}
    let(:enemy) {Character.new("enemy", Human.new, Fighter.new(Skills_fighters.new))}


    it 'should be able to attack with no weapon' do
      allow(attack).to receive(:rand).and_return(5)
      attack.damage(enemy.hp)
      expect(enemy.hp[:current]).to eq 34
    end

    it 'should be able to attack with a weapon' do
      allow(attack).to receive(:rand).and_return(5)
      allow(sword).to receive(:rand).and_return(5)
      attack.damage(enemy.hp,sword.damage)
      expect(enemy.hp[:current]).to eq 29
    end
  end
end
