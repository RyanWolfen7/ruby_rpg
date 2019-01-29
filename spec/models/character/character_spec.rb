require_relative '../../../lib/character/character.rb'

describe Character do
  describe "#Initialize" do
    it 'should have a name, race, class' do
      character = Character.new("Name", "Race", "Class")
      expect(character.name).to eq("Name")
      expect(character.race).to eq("Race")
      expect(character.class).to eq("Class")
    end

    it 'should have a default Health, Magic, Stamina' do
      character = Character.new("Name", "Race", "Class")
      expect(character.hp).to eq(100)
      expect(character.magic).to eq(100)
      expect(character.stamina).to eq(100)
    end
  end

end
