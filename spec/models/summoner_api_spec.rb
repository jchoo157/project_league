require 'rails_helper'
require 'webmock/rspec'


describe SummonerApi do
  before(:each) do
    @summoner_api = SummonerApi.new
  end

  describe '#get_summoner' do
    it 'should return a String' do
      stub_request(:get, 'https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/dyrus' + '?api_key=' + API_KEY).
          with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
          to_return(body: '{ "name": "dyrus" }')

      expect(@summoner_api.get_summoner_info(by_name: 'dyrus')).to be_a String
    end
  end
end