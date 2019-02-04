require './lib/character/skills.rb'

describe Skills do

  let(:skills) {Skills.new}

  describe '#Initialize' do
    it 'should have a nil name' do
      expect(skills.name).to eq nil
    end
  end
end
