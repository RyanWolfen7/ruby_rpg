require_relative '../../lib/character/character.rb'

describe Character do
  describe "#Init for Class" do
    it 'should have a name, race, class' do
      character = Character.new("Name", "Race", "Class")
      expect(character.name).to eq("Name")
      expect(character.race).to eq("Race")
      expect(character.class).to eq("Class")
    end
  end

end
