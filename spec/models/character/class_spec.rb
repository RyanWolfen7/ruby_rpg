require './lib/character/class.rb'

describe C_class do
  describe '#initialize' do
    it 'should have a nil name' do
      clas = C_class.new
      expect(clas.name).to eq nil
    end

    it 'should have a nil bonus' do
      clas = C_class.new
      expect(clas.bonus).to eq nil
    end
  end
end
