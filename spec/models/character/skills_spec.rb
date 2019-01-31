require './lib/character/skills.rb'

describe Skills do
  describe '#Initialize' do
    it 'should have a nil name' do
      skills = Skills.new
      expect(skills.name).to eq nil
    end
  end
end
