require_relative '../../../lib/character/races/race.rb'

describe Human do
  describe 'it should initialize modifiers' do
    race = Human.new
    bonus = { char: 2, int: 2}
    expect(race.stat_bonus).to eq
  end
end
