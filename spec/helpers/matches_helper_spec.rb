require 'rails_helper'

describe MatchesHelper do

  describe '#time' do
    it 'converts seconds to minutes' do
      num_seconds = 121
      expect(time(num_seconds)).to eq('2:01')
    end
  end

  describe '#gold' do
    it 'converts gold' do
      num_gold = 50500
      expect(gold(num_gold)).to eq('50.5k')
    end
  end

  describe '#game_type' do
    it 'should convert game_mode to an updated game name' do
      game1 = 'MATCHED_GAME'
      game2 = 'Hide and Seek'
      expect(game_type(game1)).to eq('Ranked 5v5')
      expect(game_type(game2)).to eq('Hide and Seek')
    end
  end

  describe '#result' do
    it 'should return win or loss' do
      win = 'true'
      loss = 'false'
      expect(result(win)).to eq('Win')
      expect(result(loss)).to eq('Loss')
    end
  end
end

