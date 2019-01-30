require './lib/character/class.rb'

describe Class do
  describe '#initialize' do
    it 'should have a nil name' do
      cl = Class.new
      expect.(cl.name).to eq nil
    end
  end
end
