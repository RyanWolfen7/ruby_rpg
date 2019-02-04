require './lib/character/weapons/switch_handed.rb'

describe Switch_handed do
  let(:switch_handed) {Switch_handed.new}

  describe '#switch' do
    it 'should switch to single handed' do
      expect(switch_handed.switch(true, 2)).to eq 1
    end

    it 'should switch back to two handed' do
      expect(switch_handed.switch(true, 1)).to eq 2
    end

    it 'should not change from one handed' do
      expect(switch_handed.switch(false, 1)).to eq 1
    end

    it 'should not change from two haned' do
      expect(switch_handed.switch(false, 2)).to eq 2
    end
  end
end
