require './lib/character/class.rb'

describe C_class do
  let(:clas) {C_class.new}

  describe '#initialize' do
    it 'should have a nil name' do
      expect(clas.name).to eq nil
    end

    it 'should have a nil bonus' do
      expect(clas.bonus).to eq nil
    end
  end
end
