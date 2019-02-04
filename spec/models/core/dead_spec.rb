require './lib/core/dead.rb'

describe Dead do
  describe '#initialize' do
    it 'should return false' do
      hp = {max: 100, current: 1}
      dead = Dead.new
      expect(dead.true?(hp)).to eq false
    end

    it 'should return true' do
      hp = {max: 100, current: 0}
      dead = Dead.new
      expect(dead.true?(hp)).to eq true
    end

    it 'should return true if over killed' do
      hp = {max: 100, current: -14}
      dead = Dead.new
      expect(dead.true?(hp)).to eq true
    end
  end
end
