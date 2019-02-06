require './lib/character/weapons/switch_handed.rb'

describe Switch_handed do
  class Double_switchable
    attr_accessor :switchable, :handed

    def initialize
      @handed = 2
      @switchable = true
    end
  end

  class Double_not_switchable
    attr_accessor :switchable, :handed

    def initialize
      @handed = 2
      @switchable = false
    end
  end

  class Double_single
    attr_accessor :switchable, :handed

    def initialize
      @handed = 1
      @switchable = false
    end
  end

  let(:double_switchable) {Double_switchable.new}
  let(:double_not_switchable) {Double_not_switchable.new}
  let(:double_single) {Double_single.new}


  describe '#switch' do
    it 'should switch to single handed' do
      switch = Switch_handed.new(double_switchable)
      switch.switch
      expect(double_switchable.handed).to eq 1
    end

    it 'should switch back to two handed' do
      switch = Switch_handed.new(double_switchable)
      switch.switch
      switch.switch
      expect(double_switchable.handed).to eq 2
    end

    it 'should not change from one handed' do
      switch = Switch_handed.new(double_single)
      switch.switch
      expect(double_single.handed).to eq 1
    end

    it 'should not change from two haned' do
      switch = Switch_handed.new(double_not_switchable)
      switch.switch
      expect(double_not_switchable.handed).to eq 2
    end
  end
end
