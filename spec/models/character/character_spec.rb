require_relative '../../../lib/character/character.rb'
require 'pry'

describe Character do
  let(:character) {Character.new("Name", "Race", "Class")}
  let(:stats) {{
    str: 10, dex: 18, const: 15,
    char: 10, wis: 10, int: 12
  }}
  let(:default_stats) {{
    str: 12, dex: 12, const: 12,
    char: 12, wis: 12, int: 12
  }}

  describe "#Initialize" do
    it 'should have a name, race, class' do
      expect(character.name).to eq("Name")
      expect(character.race).to eq("Race")
      expect(character.class).to eq("Class")
    end

    it 'should have a default max Health, Magic, Stamina with default stats' do
      expect(character.hp[:max]).to eq(36)
      expect(character.magic[:max]).to eq(24)
      expect(character.stamina[:max]).to eq(36)
    end

    it 'should have a current health, magic, stamina' do
      expect(character.hp[:current]).to eq(36)
      expect(character.magic[:current]).to eq(24)
      expect(character.stamina[:current]).to eq(36)
    end

    it 'should have stats' do
      character = Character.new("Name", "Race", "Class", stats)
      expect(character.stats).to eq stats
    end

    it 'should have default stats' do
      expect(character.stats).to eq default_stats
    end

    it 'should start at level 1' do
      expect(character.level).to eq 1
    end

    it 'should have a max and current xp to start' do
      expect(character.xp[:max]).to eq 100
      expect(character.xp[:current]).to eq 0
    end

    it 'should have default status' do
      expect(character.status).to eq character.status
    end
  end

  describe '#level_up' do
    it 'should reach level 2 when max xp reached' do
      character.xp_gain(100)
      expect(character.level).to eq 2
    end

    it 'max xp should jump to 250 and current should reset to 0' do
      expect(character.xp[:max]).to eq 250
      expect(character.xp[:current]).to eq 0
    end

    it 'should increase HP from 36 to 42 with default stats' do
      character.level_up
      expect(character.hp[:max]).to eq 42
      expect(character.hp[:current]).to eq 42
    end

    it 'should increase Magic from 24 to 32 with default stats' do
      character.level_up
      expect(character.magic[:max]).to eq 32
      expect(character.magic[:current]).to eq 32
    end

    it 'should increase stamina from 36 to 42 with default stats' do
      character.level_up
      expect(character.stamina[:max]).to eq 42
      expect(character.stamina[:current]).to eq 42
    end
  end

  describe '#xp_gain' do
    it 'should add xp to current' do
      character.xp_gain(50)
      expect(character.xp[:current]).to eq 50
    end
  end
end
