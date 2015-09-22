require 'rails_helper'
require 'webmock/rspec'


describe ChampionApi do
  before(:each) do
    @champion_api = ChampionApi.new
  end

  describe '#get_champion' do
    it 'should return a String' do
      stub_request(:get, 'https://na.api.pvp.net/api/lol/static-data/na/v1.2/champion/13' + '?api_key=' + API_KEY).
          with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
          to_return(body: '{ "name": "graves" }')

      expect(@champion_api.get_champion(champ_id: 13)).to be_a String
    end
  end
end