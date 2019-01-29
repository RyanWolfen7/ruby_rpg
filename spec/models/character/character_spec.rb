require_relative '../../../lib/character/character.rb'

describe Character do
  describe "#Initialize" do
    it 'should have a name, race, class' do
      character = Character.new("Name", "Race", "Class")
      expect(character.name).to eq("Name")
      expect(character.race).to eq("Race")
      expect(character.class).to eq("Class")
    end

    it 'should have a default max Health, Magic, Stamina' do
      character = Character.new("Name", "Race", "Class")
      expect(character.hp[:max]).to eq(100)
      expect(character.magic[:max]).to eq(100)
      expect(character.stamina[:max]).to eq(100)
    end

    it 'should have a current health, magic, stamina' do
      character = Character.new("Name", "Race", "Class")
      expect(character.hp[:current]).to eq(100)
      expect(character.magic[:current]).to eq(100)
      expect(character.stamina[:current]).to eq(100)
    end

    it 'should have stats' do
      stats = {
        str: 10, dex: 18, const: 15,
        char: 10, wis: 10, int: 12
      }
      character = Character.new("Name", "Race", "Class", stats)
      expect(character.stats).to eq stats
    end

    it 'should have default stats' do
      stats = {
        str: 12, dex: 12, const: 12,
        char: 12, wis: 12, int: 12
      }
      character = Character.new("Name", "Race", "Class")
      expect(character.stats).to eq stats
    end
  end

end
