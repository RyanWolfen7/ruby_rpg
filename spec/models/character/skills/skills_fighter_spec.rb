require './lib/character/skills/skills_fighter.rb'

describe Skills_fighters do
  describe '#Initialize' do
    it 'should have a name' do
      fighter = Skills_fighters.new
      expect(fighter.list).to eq []
    end
  end

  describe '#simple_first_aid' do
    it 'should return a random number 3' do
      fighter = Skills_fighters.new
      target = {max: 100, current: 90}
      allow(fighter).to receive(:rand).and_return(3)
      expect(fighter.simple_first_aid(target)).to eq 93
    end

    it 'should return a random number 4' do
      fighter = Skills_fighters.new
      target = {max: 100, current: 90}
      allow(fighter).to receive(:rand).and_return(4)
      expect(fighter.simple_first_aid(target)).to eq 94
    end

    it 'should return a random number 5' do
      fighter = Skills_fighters.new
      target = {max: 100, current: 90}
      allow(fighter).to receive(:rand).and_return(5)
      expect(fighter.simple_first_aid(target)).to eq 95
    end

    it 'should return a random number ' do
      fighter = Skills_fighters.new
      target = {max: 100, current: 90}
      expect(fighter.simple_first_aid(target)).to_not eq (90)
    end
  end

  describe '#front_kick' do
    it 'should deal 0 damage' do
      fighter = Skills_fighters.new
      enemy = {max: 100, current: 100}
      enemy_status = nil
      allow(fighter).to receive(:rand).and_return(0)
      fighter.front_kick(enemy)
      expect(enemy[:current]).to eq 100
    end

    it 'should deal 1 damage' do
      fighter = Skills_fighters.new
      enemy = {max: 100, current: 100}
      enemy_status = nil
      allow(fighter).to receive(:rand).and_return(1)
      fighter.front_kick(enemy)
      expect(enemy[:current]).to eq 99
    end

    it 'should deal 2 damage' do
      fighter = Skills_fighters.new
      enemy = {max: 100, current: 100}
      enemy_status = nil
      allow(fighter).to receive(:rand).and_return(2)
      fighter.front_kick(enemy)
      expect(enemy[:current]).to eq 98
    end

    it 'should deal 3 damage' do
      fighter = Skills_fighters.new
      enemy = {max: 100, current: 100}
      enemy_status = nil
      allow(fighter).to receive(:rand).and_return(3)
      fighter.front_kick(enemy)
      expect(enemy[:current]).to eq 97
    end

    it 'should deal 4 damage' do
      fighter = Skills_fighters.new
      enemy = {max: 100, current: 100}
      enemy_status = nil
      allow(fighter).to receive(:rand).and_return(4)
      fighter.front_kick(enemy)
      expect(enemy[:current]).to eq 96
    end

    it 'should deal 5 damage' do
      fighter = Skills_fighters.new
      enemy = {max: 100, current: 100}
      enemy_status = nil
      allow(fighter).to receive(:rand).and_return(5)
      fighter.front_kick(enemy)
      expect(enemy[:current]).to eq 95
    end
  end
end
